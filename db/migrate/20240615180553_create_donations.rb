class CreateDonations < ActiveRecord::Migration[7.1]
  def change
    create_table :donations do |t|
      t.decimal :amount, precision: 11, scale: 2
      t.string :message
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
