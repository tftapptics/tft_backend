class RemoveAbilityInfoFromChampions < ActiveRecord::Migration[5.2]
  def change
    remove_column :champions, :ability_info, :json
  end
end
