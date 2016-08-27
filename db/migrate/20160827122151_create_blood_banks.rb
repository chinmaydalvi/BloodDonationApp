class CreateBloodBanks < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_banks do |t|
      t.string  :name,                  null: false
      t.date    :established_on,        null: false
      t.string  :hospital
      t.boolean :government_approved,   null: false
      t.integer :capacity
      t.string  :website

      t.timestamps
    end
  end
end
