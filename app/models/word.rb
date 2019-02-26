class Word < ApplicationRecord
  belongs_to :category
  has_many :wordchoices
  has_one :lesson_word
  accepts_nested_attributes_for :wordchoices, allow_destroy: true
  validates :name,  presence: true
  
  def answer
    self.wordchoices.where(correct: true).name
  end
end
