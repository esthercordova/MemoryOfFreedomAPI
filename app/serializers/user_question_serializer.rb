class UserQuestionSerializer < ActiveModel::Serializer
  attributes :id, :status, :notes, :user_id, :question_id
  has_one :user
  has_one :question
end
