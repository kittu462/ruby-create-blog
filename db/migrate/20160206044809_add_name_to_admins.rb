class AddNameToAdmins < ActiveRecord::Migration
  def change
    add_column :admins, :name, :string
    add_column :admins, :date_of_birth, :datetime
    add_column :admins, :is_female, :boolean, default: false
  end
end
