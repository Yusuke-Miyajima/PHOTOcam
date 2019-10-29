class RenameLensTable < ActiveRecord::Migration[5.2]
  def change
  	rename_table :lens, :lens_systems
  end
end
