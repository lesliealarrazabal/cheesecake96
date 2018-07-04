class AddIndexToUsers < ActiveRecord::Migration
  def change
  end
  add_index('users','role_id')
end
