class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.integer :category_id
      t.string :title
      t.string :description
      t.decimal :goal_amount, precision: 11, scale: 2
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
