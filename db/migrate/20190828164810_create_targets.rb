class CreateTargets < ActiveRecord::Migration[5.2]
  def change
    create_table :targets do |t|
      t.string :genre
      t.text :title
      t.text :text
      t.text :url
      t.string :img
      t.references :user
      t.timestamps
    end
  end
end
