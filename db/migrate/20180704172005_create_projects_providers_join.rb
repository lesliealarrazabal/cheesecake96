class CreateProjectsProvidersJoin < ActiveRecord::Migration
  def change
    create_table :projects_providers, :id => false do |t|
      t.integer 'projects_id'
      t.integer 'providers_id'
    end
    add_index('projects_providers',['projects_id','providers_id'])
  end
end
