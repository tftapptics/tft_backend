class CreateChampions < ActiveRecord::Migration[5.2]
  def change
    create_table :champions do |t|
      t.string :name
      t.string :champion_thumbnail
      t.integer :cost
      t.integer :health, array:true, default: []
      t.integer :dmg
      t.integer :armor
      t.integer :mr
      t.float :atk_spd
      t.string :range
      t.string :ability_thumbnail
      t.jsonb :ability_info, null:false, default: '[{}]'
      t.string :model_img

      t.timestamps
    end
  end
end
