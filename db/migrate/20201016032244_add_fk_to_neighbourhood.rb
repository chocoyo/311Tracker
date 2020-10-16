class AddFkToNeighbourhood < ActiveRecord::Migration[6.0]
  def change
    add_reference :neighbourhoods, :wards, foreign_key: true
  end
end
