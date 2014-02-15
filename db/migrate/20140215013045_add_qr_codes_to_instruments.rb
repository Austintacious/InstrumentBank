class AddQrCodesToInstruments < ActiveRecord::Migration
  def up
    add_column :instruments, :qrcode, :string
  end

  def down
    remove_column :instruments, :qrcode
  end
end
