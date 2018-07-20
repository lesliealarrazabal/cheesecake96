class AddIndexToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :category_id, :integer
  end
  add_index('projects','category_id')
end
