class CreateWards < ActiveRecord::Migration[6.0]
  def change
    create_table :wards do |t|
      t.text :ward

      t.timestamps
    end
  end
end
