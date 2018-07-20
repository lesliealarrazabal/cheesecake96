class ProjectsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @projects = Project.where_user_id(current_user.id)
    
  end

  def show
    @project = Project.find(params[:id])
    #Todos los proveedores que estan dados de alta en ese proyecto
    
  end

  def new
    @project = Project.new({:user_id => current_user.id})
    #Todos los proveedores que estan dados de alta
    @current_user =User.find(current_user.id)
    
   
  end

  def create
    #Instantiate a new object using form parameters
    @project = Project.new(project_params)
    #Save the object
    if @project.save
      flash[:notice]="Project created successfully"
      redirect_to(projects_path)
    else
      render('new')
    end

  end

  def edit
    @project = Project.find(params[:id])
    #Todos los proveedores que estan dados de alta
    @current_user =User.find(current_user.id)
    
  end

  def update
    @project = Project.find(params[:id])  

    if @project.update_attributes(project_params)
      flash[:notice]="Project updated successfully."
      redirect_to(project_path(@project))
    else
      render('edit')
    end
  end

  def delete
    @project =Project.find(params[:id])
  end

  def destroy
    @project =Project.find(params[:id])
    @project.destroy
    flash[:notice]="Project [ '#{@project.name}' ] destroyed successfully."
    redirect_to(projects_path)
  end




  private
  def project_params
    params.require(:project).permit(:name,:description,:sent_at,:cover,:user_id,questions_attributes: [:id,:title,:_destroy])
  end

 


end
