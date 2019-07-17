class CreateClassTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :class_types do |t|
      t.string :name
      t.string :thumbnail
      t.string :summary
      t.string :tier_info, array: true, default: []
      t.integer :tiers, array: true, default: []

      t.timestamps
    end
  end
end
