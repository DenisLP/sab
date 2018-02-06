class CreatePos < ActiveRecord::Migration
  def change
    create_table :pos do |t|
      t.references :contact, index: true, foreign_key: true
      t.references :vehicle, index: true, foreign_key: true
      t.references :inspection, index: true, foreign_key: true
      t.references :rentals, index: true, foreign_key: true
      t.string :id_cccone
      t.string :id_mitchell

      t.timestamps null: false
    end
  end
end
