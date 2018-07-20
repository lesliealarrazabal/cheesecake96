class CreateOnboardingsProvidersJoin < ActiveRecord::Migration
  def change
    create_table :onboardings_providers, :id => false  do |t|
      t.integer 'onboarding_id'
      t.integer 'provider_id'
    end
    add_index('onboardings_providers',['onboarding_id','provider_id'])
  end
end
