class DropProjectsProvidersTable < ActiveRecord::Migration
  def change
    drop_table :projects_providers
  end
end
