class Project < ActiveRecord::Base
    belongs_to :user
    has_many :projects
    has_and_belongs_to_many :questions
    accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true
    mount_uploader :cover, CoverUploader
    

    scope :where_user_id, lambda {|query| where(["user_id LIKE ?","%#{query}%"])}
    scope :sorted, lambda {order('id DESC')}
   
end
