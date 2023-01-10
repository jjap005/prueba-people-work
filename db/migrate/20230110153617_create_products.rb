class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :brand, null: false, foreign_key: true
      t.string :serial
      t.string :description
      t.integer :price
      t.boolean :status

      t.timestamps
    end
  end
end
