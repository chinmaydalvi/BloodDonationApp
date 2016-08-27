class CreateBloodRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :blood_requests do |t|
      t.string :name, null: false
      t.string :email
      t.string :blood_group, null: false
      t.integer :status, null: false
      t.boolean :emergency, null: false

      t.timestamps
    end
  end
end
