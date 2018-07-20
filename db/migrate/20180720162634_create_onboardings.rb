class CreateOnboardings < ActiveRecord::Migration
  def change
    create_table :onboardings do |t|
      
      t.timestamps null: false
      t.integer 'user_id'
      t.integer 'project_id'
    end
    add_index('onboardings',['user_id','project_id'])
  end
end
