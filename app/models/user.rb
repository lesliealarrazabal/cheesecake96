class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :onboardings
  has_many :projects
  has_and_belongs_to_many :providers

  scope :search, lambda {|query| where(["id LIKE ?","%#{query}%"])}
end
