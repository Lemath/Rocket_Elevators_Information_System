class AddProjectDescriptionToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :project_description, :string
  end
end
