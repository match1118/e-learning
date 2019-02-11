class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :name

      t.timestamps
      t.references :category, foreign_key: true
    end
    add_index :words, [:category_id, :created_at]
  end
end
