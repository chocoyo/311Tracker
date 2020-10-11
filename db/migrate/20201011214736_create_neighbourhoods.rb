class CreateNeighbourhoods < ActiveRecord::Migration[6.0]
  def change
    create_table :neighbourhoods do |t|
      t.text :neighbourhood

      t.timestamps
    end
  end
end
