class CreateColumns < ActiveRecord::Migration[5.2]
  def change
    create_table :columns do |t|
      t.string :BatteryId
      t.string :Type
      t.string :Nombre
      t.string :Statut
      t.string :Information
      t.string :Notes

      t.timestamps
    end
  end
end
