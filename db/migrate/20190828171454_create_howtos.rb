class CreateHowtos < ActiveRecord::Migration[5.2]
  def change
    create_table :howtos do |t|
      t.text :comment
      t.text :share
      t.references :user
      t.references :target
      t.timestamps
    end
  end
end
