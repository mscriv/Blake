class CreateRequirementCategories < ActiveRecord::Migration
  def change
    create_table :requirement_categories do |t|
      t.string :name
      t.references :graduation_requirement, index: true

      t.timestamps
    end
  end
end
