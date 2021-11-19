class AddMessageToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :message, :string
  end
end
