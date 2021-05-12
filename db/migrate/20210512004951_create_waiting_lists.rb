class CreateWaitingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :waiting_lists do |t|
      t.integer :number_of_patients
      t.integer :waiting_time
      t.integer :avg_processing_time

      t.timestamps
    end
  end
end
