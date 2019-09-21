class FromTargets < ActiveRecord::Migration[5.2]
  def change
    remove_column :targets, :url
    remove_column :targets, :feature
  end
end
