class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string 'name'
      t.text 'description'
      t.datetime 'sent_at'
      t.timestamps      
    end
  end
end
