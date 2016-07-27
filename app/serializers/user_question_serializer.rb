class UserQuestionSerializer < ActiveModel::Serializer
  attributes :id, :status, :notes
  has_one :user
  has_one :question
end
