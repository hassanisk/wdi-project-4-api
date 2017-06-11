class AddImageToDiet < ActiveRecord::Migration[5.1]
  def change
    add_column :diets, :image, :text
  end
end
