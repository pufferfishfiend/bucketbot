class CreateGrows < ActiveRecord::Migration[5.2]
  def change
    create_table :grows do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.string :grow_key

      t.timestamps
    end
  end
end
