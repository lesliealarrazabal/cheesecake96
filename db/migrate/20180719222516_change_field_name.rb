class ChangeFieldName < ActiveRecord::Migration
  def change
    rename_column :questions, :questiontext, :title
    remove_column :questions, :content
  end
end
