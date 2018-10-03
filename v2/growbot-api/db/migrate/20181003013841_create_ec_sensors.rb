class CreateEcSensors < ActiveRecord::Migration[5.2]
  def change
    create_table :ec_sensors do |t|
      t.string :value
      t.references :grow, foreign_key: true

      t.timestamps
    end
  end
end
