class AddUsersIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :users_id, :integer
  end
  add_index('projects','users_id')
end
