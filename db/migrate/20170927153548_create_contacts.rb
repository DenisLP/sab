class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :contact_type
      t.string :company
      t.string :first_name_abreviation
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :age
      t.string :phone_1_type
      t.string :phone_1_number
      t.string :phone_2_type
      t.string :phone_2_number
      t.string :phone_3_type
      t.string :phone_3_number
      t.string :address_1_type
      t.string :address_1_main
      t.string :address_1_extra
      t.string :address_1_city
      t.string :address_1_state
      t.string :address_1_zipcode
      t.string :address_2_type
      t.string :address_2_main
      t.string :address_2_extra
      t.string :address_2_city
      t.string :address_2_state
      t.string :address_2_zipcode
      t.string :address_3_type
      t.string :address_3_main
      t.string :address_3_extra
      t.string :address_3_city
      t.string :address_3_state
      t.string :address_3_zipcode
      t.string :address_4_type
      t.string :address_4_main
      t.string :address_4_extra
      t.string :address_4_city
      t.string :address_4_state
      t.string :address_4_zipcode
      t.string :estimator
      t.string :priority
      t.string :primary_referral
      t.string :secondary_referral

      t.timestamps null: false
    end
  end
end
