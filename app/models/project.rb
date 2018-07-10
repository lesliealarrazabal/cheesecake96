class Project < ActiveRecord::Base
    belongs_to :users
    has_and_belongs_to_many :providers


    scope :where_user_id, lambda {|query| where(["user_id LIKE ?","%#{query}%"])}
    scope :sorted, lambda {order('id DESC')}
   
end
