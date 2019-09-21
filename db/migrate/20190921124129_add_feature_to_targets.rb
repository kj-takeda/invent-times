class AddFeatureToTargets < ActiveRecord::Migration[5.2]
  def change
    add_column :targets, :feature, :text
  end
end
