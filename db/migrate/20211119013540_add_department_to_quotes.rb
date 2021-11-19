class AddDepartmentToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :department, :string
  end
end
