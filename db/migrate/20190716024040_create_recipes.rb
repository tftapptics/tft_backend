class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :requirements     # possible way to store both items (array: true, default: [])
      t.string :icon_img

      t.timestamps
    end
  end
end
