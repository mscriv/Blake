class CreateCounselors < ActiveRecord::Migration
  def change
    create_table :counselors do |t|
      t.string :name
      t.text :bio
      t.string :contact
      t.references :school, index: true

      t.timestamps
    end
  end
end
