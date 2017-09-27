class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :rental_company
      t.string :address_1_main
      t.string :address_2_main
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone_1_type
      t.string :phone_1_number
      t.string :phone_2_type
      t.string :phone_2_number
      t.string :phone_3_type
      t.string :phone_3_number
      t.string :rental_status
      t.string :rental_start
      t.string :coverage_money_per_day
      t.string :days
      t.boolean :approved_by_insurance

      t.timestamps null: false
    end
  end
end
