class Provider < ActiveRecord::Base
has_and_belongs_to_many :onboardings
has_and_belongs_to_many :users
   
end
