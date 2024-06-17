class AddRewardTitleToRewards < ActiveRecord::Migration[7.1]
  def change
    add_column :rewards, :title, :string
  end
end
