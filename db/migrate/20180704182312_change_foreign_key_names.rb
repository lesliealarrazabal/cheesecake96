class ChangeForeignKeyNames < ActiveRecord::Migration
  def change
    rename_column :projects, :users_id, :user_id
    rename_column :projects_providers, :projects_id, :project_id
    rename_column :projects_providers, :providers_id, :provider_id
  end
  rename_index('projects_providers', 'projects_id', 'project_id') 
  rename_index('projects_providers', 'providers_id', 'provider_id') 
  rename_index('projects','users_id','user_id')
end
