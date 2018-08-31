class CreateSensorReadings < ActiveRecord::Migration[5.2]
  def change
    create_table :sensor_readings do |t|
      t.string :type
      t.string :value

      t.timestamps
    end
  end
end
