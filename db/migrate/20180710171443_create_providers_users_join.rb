class CreateProvidersUsersJoin < ActiveRecord::Migration
  def change
    create_table :providers_users, :id => false do |t|
      t.integer 'provider_id'
      t.integer 'user_id'
    end
    add_index('providers_users',['provider_id','user_id'])
  end
end
