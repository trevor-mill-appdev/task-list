class Task < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  validates(:status, { :presence => true })
  validates(:body, { :presence => true })
end
