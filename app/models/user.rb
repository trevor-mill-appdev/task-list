class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password
  
  has_many(:tasks, { :class_name => "Task", :foreign_key => "user_id", :dependent => :destroy })
end
