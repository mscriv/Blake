class CreateTestingComparisons < ActiveRecord::Migration
  def change
    create_table :testing_comparisons do |t|
      t.string :name
      t.string :cost
      t.text :general_information
      t.text :test_content
      t.text :scoring

      t.timestamps
    end
  end
end
