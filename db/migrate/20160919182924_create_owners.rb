class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :name
      t.datetime :time
      t.string :phone

      t.timestamps null: false
    end
  end
end
