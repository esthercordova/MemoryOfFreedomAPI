class UserQuestion < ActiveRecord::Base
  belongs_to :user, inverse_of: :user_questions
  belongs_to :question, inverse_of: :user_questions
end
