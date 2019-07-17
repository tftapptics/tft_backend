class CreateRawItems < ActiveRecord::Migration[5.2]
  def change
    create_table :raw_items do |t|
      t.string :name
      t.string :thumbnail
      t.string :stat_boost

      t.timestamps
    end
  end
end
