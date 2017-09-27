class CreateInsurances < ActiveRecord::Migration
  def change
    create_table :insurances do |t|
      t.string :insurance_company
      t.string :policy_number
      t.string :claim_office
      t.string :phone_1_number
      t.string :phone_2_type
      t.string :phone_2_number
      t.string :phone_3_type
      t.string :phone_3_number
      t.string :adjuster
      t.string :insurance_agent
      t.integer :deductible
      t.string :claim_number
      t.string :claim_type
      t.string :type_of_loss
      t.datetime :loss_date_time
      t.string :payer
      t.integer :insurer_prepaid_amount

      t.timestamps null: false
    end
  end
end
