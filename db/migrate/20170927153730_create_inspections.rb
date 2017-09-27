class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
      t.datetime :appointment_date
      t.datetime :date_inspected
      t.string :site_type
      t.string :name
      t.string :contact
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone_1_number
      t.string :phone_2_number
      t.string :work_assigned
      t.string :estimated_days_to_repair
      t.string :current_assignment_type
      t.string :original_assignment_type

      t.timestamps null: false
    end
  end
end
