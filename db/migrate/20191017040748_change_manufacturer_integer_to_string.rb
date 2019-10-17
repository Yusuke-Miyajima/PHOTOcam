class ChangeManufacturerIntegerToString < ActiveRecord::Migration[5.2]
  def change
  	change_column :manufacturers, :manufacturer, :string
  end
end
