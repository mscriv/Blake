class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :school
      t.string :test_code
      t.string :high_school_code
      t.references :test_date, index: true

      t.timestamps
    end
  end
end
