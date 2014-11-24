class CreateToDoLists < ActiveRecord::Migration
  def change
    create_table :to_do_lists do |t|
      t.string :item
      t.references :senior_checklist, index: true

      t.timestamps
    end
  end
end
