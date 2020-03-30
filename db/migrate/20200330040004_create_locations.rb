class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :city
      t.string :district
      t.string :ward

      t.timestamps
    end
  end
end
