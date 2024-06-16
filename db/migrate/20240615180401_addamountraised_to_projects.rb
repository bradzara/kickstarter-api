class AddamountraisedToProjects < ActiveRecord::Migration[7.1]
  def change
    add_column :projects, :amount_raised, :decimal, precision: 11, scale: 2, default: 0
  end
end
