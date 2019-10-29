class AddAccountIdUniq < ActiveRecord::Migration[5.2]
  def change
  	add_index :users, :account_id, unique: true
  end
end
