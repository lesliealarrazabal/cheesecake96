class Onboarding < ActiveRecord::Base
    has_and_belongs_to_many :providers
    has_many :answers
    belongs_to :user
    belongs_to :project
end
