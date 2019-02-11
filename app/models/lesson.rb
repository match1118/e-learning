class Lesson < ApplicationRecord
  belongs_to :user_id
  belongs_to :category_id
  has_many :lesson_words_id
  
end
