class AddTimeToTargets < ActiveRecord::Migration[5.2]
  def change
    add_column :targets, :time, :integer
  end
end
