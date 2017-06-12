class CreateFavs < ActiveRecord::Migration[5.1]
  def change
    create_table :favs do |t|
      t.references :user, foreign_key: true
      t.integer :bodypart
      t.text :muscelsname
      t.text :name
      t.text :desc
      t.text :rep
      t.text :image
      t.integer :level
      t.string :difficulty

      t.timestamps
    end
  end
end
