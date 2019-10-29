class ChangeLensColumn < ActiveRecord::Migration[5.2]
  def change
  	change_column :lens, :manufacturer_id, :string
  end
end
