class CreateServiceRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :service_requests do |t|
      t.text :service_request

      t.timestamps
    end
  end
end
