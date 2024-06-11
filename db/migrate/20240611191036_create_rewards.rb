class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.integer :project_id
      t.string :description
      t.decimal :amount, precision: 11, scale: 2
      t.decimal :limit, precision: 11, scale: 2
      t.datetime :delivery_date

      t.timestamps
    end
  end
end
