class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :vehicle
      t.string :type
      t.integer :year
      t.string :make
      t.string :model
      t.string :body_style
      t.string :engine
      t.integer :mileage_in
      t.integer :mileage_out
      t.date :production_date
      t.string :fuel
      t.string :exterior_color
      t.string :interior_color
      t.string :paint_code
      t.string :trim_code
      t.string :license_plate
      t.string :license_plate_state
      t.string :license_expiration
      t.string :package_1
      t.string :package_2
      t.string :job_number
      t.string :repairable_condition
      t.string :primary_impact
      t.string :secondary_impact
      t.string :drivable_status
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :p4
      t.string :p5
      t.string :p6
      t.string :p7
      t.string :p8
      t.string :p9
      t.string :p10
      t.string :p11
      t.string :p12
      t.string :p13
      t.text :impact_note
      t.text :prior_damage_note

      t.timestamps null: false
    end
  end
end
