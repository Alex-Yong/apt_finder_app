class CreateApartments < ActiveRecord::Migration
  def change
    create_table :apartments do |t|
      t.string :street
      t.string :city
      t.float :postal_code
      t.string :state
      t.string :country
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
