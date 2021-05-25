class CreateWaitingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :waiting_lists do |t|
      t.integer :painLevel
      t.integer :patientsNumber
      t.integer :WaitingTime

      t.timestamps
    end
  end
end
