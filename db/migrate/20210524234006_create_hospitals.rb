class CreateHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :hospitals do |t|
      t.integer :hospital_id
      t.string :name
      t.float :lat
      t.float :long

      t.timestamps
    end
  end
end
