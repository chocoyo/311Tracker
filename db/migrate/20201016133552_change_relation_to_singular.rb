class ChangeRelationToSingular < ActiveRecord::Migration[6.0]
  def change
    remove_reference :neighbourhoods, :wards, foreign_key: true
    add_reference :neighbourhoods, :ward, foreign_key: true
  end
end
