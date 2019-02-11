class AddAdminToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :admin, :boolean, default: false
  end
end
