class NormalizeColumnNames < ActiveRecord::Migration[6.0]
  def change;
    rename_column :service_areas, :service_area, :name
    rename_column :neighbourhoods, :neighbourhood, :name
    rename_column :service_requests, :service_request, :name
    rename_column :wards, :ward, :name
  end
end
