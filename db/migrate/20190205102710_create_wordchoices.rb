class CreateWordchoices < ActiveRecord::Migration[5.1]
  def change
    create_table :wordchoices do |t|
      t.string :name

      t.timestamps
      t.references :word, foreign_key: true
    end
    add_index :wordchoices, [:word_id, :created_at]
  end
end
