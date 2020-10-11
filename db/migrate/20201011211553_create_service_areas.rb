class CreateServiceAreas < ActiveRecord::Migration[6.0]
  def change
    create_table :service_areas do |t|
      t.text :service_area

      t.timestamps
    end
  end
end
