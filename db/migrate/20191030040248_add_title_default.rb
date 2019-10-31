class AddTitleDefault < ActiveRecord::Migration[5.2]
  def change
  	change_column :photos, :title, :string, :default => "title"
  	change_column :photos, :caption, :text, :default => "caption"
  end
end
