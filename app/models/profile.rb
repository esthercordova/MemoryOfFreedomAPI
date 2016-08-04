class Profile < ActiveRecord::Base
  belongs_to :user
  validates :user, uniqueness: true
end
