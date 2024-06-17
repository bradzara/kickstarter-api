class UpdateRewards < ActiveRecord::Migration[7.1]
  def change
    change_column :rewards, :limit, :integer, default: nil
  end
end
