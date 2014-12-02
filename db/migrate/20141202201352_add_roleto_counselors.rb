class AddRoletoCounselors < ActiveRecord::Migration
  def change
    add_column :counselors, :role, :string, limit: 25, default: 'staff'
  end
end
