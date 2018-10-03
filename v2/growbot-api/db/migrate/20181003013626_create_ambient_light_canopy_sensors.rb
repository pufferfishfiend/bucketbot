class CreateAmbientLightCanopySensors < ActiveRecord::Migration[5.2]
  def change
    create_table :ambient_light_canopy_sensors do |t|
      t.string :value
      t.references :grow, foreign_key: true

      t.timestamps
    end
  end
end
