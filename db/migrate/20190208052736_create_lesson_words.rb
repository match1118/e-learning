class CreateLessonWords < ActiveRecord::Migration[5.1]
  def change
    create_table :lesson_words do |t|
      t.references :lesson_id, foreign_key: true, index: true
      t.references :word_id, foreign_key: true, index: true
      t.references :wordchoice_id, foreign_key: true, index: true

      t.timestamps
    end
  end
end
