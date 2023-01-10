class CreateBrands < ActiveRecord::Migration[7.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
