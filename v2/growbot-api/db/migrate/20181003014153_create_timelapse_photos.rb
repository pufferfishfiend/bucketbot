class CreateTimelapsePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :timelapse_photos do |t|
      t.string :file
      t.references :grow, foreign_key: true

      t.timestamps
    end
  end
end
