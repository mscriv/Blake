class CreateGraduationRequirements < ActiveRecord::Migration
  def change
    create_table :graduation_requirements do |t|
      t.string :year
      t.string :description

      t.timestamps
    end
  end
end
