class Exercise < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :users, through: :comments
end

e = Exercise.new
e.user_id = 1
e.save