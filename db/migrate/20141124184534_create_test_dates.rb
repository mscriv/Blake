class CreateTestDates < ActiveRecord::Migration
  def change
    create_table :test_dates do |t|
      t.date :date
      t.date :deadline
      t.references :testing, index: true

      t.timestamps
    end
  end
end
