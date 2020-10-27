class AddingLatLngToCalls < ActiveRecord::Migration[6.0]
  def change
    add_column :calls, :lat, :decimal, { precision: 10, scale: 6 }
    add_column :calls, :lng, :decimal, { precision: 10, scale: 6 }
  end
end
