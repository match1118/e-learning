class AddColumnToWordchoices < ActiveRecord::Migration[5.1]
  def change
    add_column :wordchoices, :correct, :boolean, default: false
  end
end
