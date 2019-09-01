class RemoveInterestFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :interest
  end
end
