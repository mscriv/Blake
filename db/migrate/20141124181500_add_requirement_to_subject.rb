class AddRequirementToSubject < ActiveRecord::Migration
  def change
    add_column :subjects, :requirement, :text

  end
end
