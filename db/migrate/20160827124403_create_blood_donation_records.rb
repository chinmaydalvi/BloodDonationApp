class CreateBloodDonationRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_donation_records do |t|
      t.references :user, null: false
      t.references :blood_bank, null: false
      t.date :donation_date, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
  end
end
