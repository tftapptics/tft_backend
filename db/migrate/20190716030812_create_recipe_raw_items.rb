class CreateRecipeRawItems < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_raw_items do |t|
      t.references :recipe, foreign_key: true
      t.references :raw_item, foreign_key: true

      t.timestamps
    end
  end
end
