class Onboarding < ActiveRecord::Base
    has_and_balongs_to_many :providers
    has_many :answers
    belongs_to :user
    belongs_to :project
end
