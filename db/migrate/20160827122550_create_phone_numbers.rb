class CreatePhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :phone_numbers do |t|
      t.references :owner, polymorphic: true, null: false
      t.integer :phone_type_cd, null: false
      t.string  :phone_number, null: false

      t.timestamps
    end
  end
end
