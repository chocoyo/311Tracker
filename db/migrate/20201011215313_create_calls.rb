class CreateCalls < ActiveRecord::Migration[6.0]
  def change
    create_table :calls do |t|
      t.datetime :call_time
      t.references :service_area, null: false, foreign_key: true
      t.references :service_request, null: false, foreign_key: true
      t.references :ward, null: false, foreign_key: true
      t.references :neighbourhood, null: false, foreign_key: true

      t.timestamps
    end
  end
end
