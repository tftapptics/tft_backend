class AddAbilityInfoToChampions < ActiveRecord::Migration[5.2]
  def change
    add_column :champions, :ability_name, :string
    add_column :champions, :ability_info, :string
  end
end
