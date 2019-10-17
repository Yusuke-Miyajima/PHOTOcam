class ChangeColumnBooleanToInteger < ActiveRecord::Migration[5.2]
  def change
  	change_column :bodies, :film, :integer
  	change_column :bodies, :reflex, :integer
  	change_column :bodies, :interchangeable, :integer
  	change_column :lens, :full_frame_support, :integer
  end
end
