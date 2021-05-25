class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.integer :disease_id
      t.string :name

      t.timestamps
    end
  end
end
