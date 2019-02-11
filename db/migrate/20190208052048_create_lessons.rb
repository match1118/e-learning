class CreateLessons < ActiveRecord::Migration[5.1]
  def change
    create_table :lessons do |t|
      t.references :user_id, foreign_key: true, index: true
      t.references :category_id, foreign_key: true, index: true

      t.timestamps
    end
  end
end
