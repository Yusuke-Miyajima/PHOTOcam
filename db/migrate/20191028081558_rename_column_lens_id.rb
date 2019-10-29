class RenameColumnLensId < ActiveRecord::Migration[5.2]
  def change
  	rename_column :photos, :lens_id, :lens_system_id
  end
end
