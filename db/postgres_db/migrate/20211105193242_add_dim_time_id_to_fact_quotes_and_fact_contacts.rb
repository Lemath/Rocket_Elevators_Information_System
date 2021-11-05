class AddDimTimeIdToFactQuotesAndFactContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :fact_quotes, :dim_time_id, :integer
    add_column :fact_contacts, :dim_time_id, :integer
  end
end
