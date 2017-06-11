class CreateNutritions < ActiveRecord::Migration[5.1]
  def change
    create_table :nutritions do |t|
      t.string :name
      t.text :intro
      t.text :cons
      t.text :pros
      t.text :bda
      t.text :image

      t.timestamps
    end
  end
end
