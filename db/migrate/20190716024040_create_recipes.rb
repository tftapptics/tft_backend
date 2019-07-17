class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :item_1
      t.string :item_2
      t.string :description
      t.string :thumbnail

      t.timestamps
    end
  end
end
