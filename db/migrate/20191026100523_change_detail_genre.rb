class ChangeDetailGenre < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bodies, :manufacturer, :manufacturer_id
  end
end
