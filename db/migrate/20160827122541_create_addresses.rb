class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :owner, polymorphic: true, null: false
      t.text       :street_address1, null: false
      t.text       :street_address2
      t.string     :city, null: false
      t.string     :state, null: false
      t.string     :pincode, null: false

      t.timestamps
    end
  end
end
