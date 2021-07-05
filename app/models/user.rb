class User < ApplicationRecord
    has_many :exercises
    has_many :comments
    has_many :commented_exercises, through: :comments, source: :exercise
    has_secure_password 
    # has_many :muscle_groups, through: :exercises

end
 