class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.string :trait
      t.integer :trait_stat
      t.string :icon_img

      t.timestamps
    end
  end
end
