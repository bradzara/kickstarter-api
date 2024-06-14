class UpdateUser < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :name, :string
    add_column :users, :first, :string
    add_column :users, :last, :string
    add_column :users, :admin, :boolean, default: false
  end
end
