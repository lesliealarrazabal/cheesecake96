class ProvidersController < ApplicationController
  def index    
    @current_user =User.find(current_user.id)
    @providers = @current_user.providers
  end

  def show
    @current_user =User.find(current_user.id)
    @providers = @current_user.providers
    @provider = @providers.find(params[:id])

  end

  def new
    @provider = Provider.new()
  end

  def create
    @provider = Provider.new(provider_params)
    if @provider.save
      @current_user =User.find(current_user.id)
      @current_user.providers << @provider                         #Adding the provider to the user on the table many to many
      flash[:notice] = "Provider was successfully created"
      redirect_to(providers_path)
    else
      render('new')
    end
  end

  def edit
    @current_user =User.find(current_user.id)
    @providers = @current_user.providers
    @provider = @providers.find(params[:id])

  end

  def update
    @current_user =User.find(current_user.id)
    @providers = @current_user.providers
    @provider = @providers.find(params[:id])

    if @provider.update_attributes(provider_params)
      flash[:notice] = "Provider was successfully updated"
      redirect_to(provider_path(@provider))    
    else
      render('edit')
    end
  end

  def delete
    @current_user =User.find(current_user.id)
    @providers = @current_user.providers
    @provider = @providers.find(params[:id])

  end

  def destroy
    @current_user =User.find(current_user.id)
    @providers = @current_user.providers
    @provider = @providers.find(params[:id])

    @provider.destroy
    flash[:notice] = "Provider [ '#{@provider.name}' ] was successfully deleted"
    redirect_to(providers_path)
  end

  private
  def provider_params
    params.require(:provider).permit(:name)
  end
end
