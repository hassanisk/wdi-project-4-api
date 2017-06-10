class CreateDiets < ActiveRecord::Migration[5.1]
  def change
    create_table :diets do |t|
      t.string :name
      t.text :intro
      t.text :cons
      t.text :pros
      t.text :bda

      t.timestamps
    end
  end
end
