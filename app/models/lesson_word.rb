class LessonWord < ApplicationRecord
  belongs_to :lesson_id
  belongs_to :word_id
  belongs_to :wordchoice_id
end
