class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.integer :time
      t.references :user
      t.timestamps
    end
  end
end
