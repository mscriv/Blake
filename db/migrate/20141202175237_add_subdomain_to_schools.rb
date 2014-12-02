class AddSubdomainToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :subdomain, :string

  end
end
