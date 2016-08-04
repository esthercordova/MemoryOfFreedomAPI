#
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :user_questions
  has_many :questions, :through => :user_questions
  has_one :profile
end
