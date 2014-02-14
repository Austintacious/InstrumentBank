class AddTitleToBank < ActiveRecord::Migration
  def up
    add_column :banks, :title, :string, null: false
  end

  def down
    remove_column :banks, :title
  end
end
