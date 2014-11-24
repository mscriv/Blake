class CreateSeniorChecklists < ActiveRecord::Migration
  def change
    create_table :senior_checklists do |t|
      t.string :month

      t.timestamps
    end
  end
end
