class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.references :owner, polymorphic: true, null: false
      t.string :file, null: false

      t.timestamps
    end
  end
end
