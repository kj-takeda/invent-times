class RemoveTargetIdFromFeatures < ActiveRecord::Migration[5.2]
  def change
    remove_column :features, :target_id

  end
end
