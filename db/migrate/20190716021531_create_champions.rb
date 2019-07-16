class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :rarity_cost
      t.boolean :has_passive
      t.boolean :has_spell
      t.string :ability_description
      t.string :model_img
      t.string :icon_img

      t.timestamps
    end
  end
end
