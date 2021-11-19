class RemoveStringFromQuotes < ActiveRecord::Migration[5.2]
  def change
    remove_column :quotes, :string, :string
  end
end
