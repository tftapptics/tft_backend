class CreateChampionOriginClassTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :champion_origin_class_types do |t|
      t.references :champion, foreign_key: true
      t.references :origin, foreign_key: true
      t.references :class_type, foreign_key: true

      t.timestamps
    end
  end
end
