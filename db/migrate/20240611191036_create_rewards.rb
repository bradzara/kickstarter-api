class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :project_id
      t.string :description
      t.string :amount
      t.string :limit
      t.string :delivery_date

      t.timestamps
    end
  end
end
