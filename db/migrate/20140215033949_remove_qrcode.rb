class RemoveQrcode < ActiveRecord::Migration
  def up
    remove_column :instruments, :qrcode
  end

  def down
    add_column :instruments, :qrcode, :string
  end
end
