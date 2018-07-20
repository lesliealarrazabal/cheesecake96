class DropCategoryColumn < ActiveRecord::Migration
  def change
    remove_column :projects, :category_id
  end
end
