class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.date :date
      t.time :start_time
      t.time :ends_at

      t.timestamps
    end
  end
end
