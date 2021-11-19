class AddProjectNameToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :project_name, :string
  end
end
