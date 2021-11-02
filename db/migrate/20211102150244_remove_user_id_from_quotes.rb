class RemoveUserIdFromQuotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :user_id, :string
  end
end
