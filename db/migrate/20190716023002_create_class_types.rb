class CreateClassTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :class_types do |t|
      t.string :name
      t.string :tier1_reqs
      t.string :tier2_reqs
      t.string :tier3_reqs
      t.string :icon_img

      t.timestamps
    end
  end
end
