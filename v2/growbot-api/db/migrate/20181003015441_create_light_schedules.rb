class CreateLightSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :light_schedules do |t|
      t.references :grow, foreign_key: true
      t.integer :lights_on
      t.integer :lights_off

      t.timestamps
    end
  end
end
