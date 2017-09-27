# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170927153753) do

  create_table "contacts", force: :cascade do |t|
    t.string   "contact_type"
    t.string   "company"
    t.string   "first_name_abreviation"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "gender"
    t.string   "age"
    t.string   "phone_1_type"
    t.string   "phone_1_number"
    t.string   "phone_2_type"
    t.string   "phone_2_number"
    t.string   "phone_3_type"
    t.string   "phone_3_number"
    t.string   "address_1_type"
    t.string   "address_1_main"
    t.string   "address_1_extra"
    t.string   "address_1_city"
    t.string   "address_1_state"
    t.string   "address_1_zipcode"
    t.string   "address_2_type"
    t.string   "address_2_main"
    t.string   "address_2_extra"
    t.string   "address_2_city"
    t.string   "address_2_state"
    t.string   "address_2_zipcode"
    t.string   "address_3_type"
    t.string   "address_3_main"
    t.string   "address_3_extra"
    t.string   "address_3_city"
    t.string   "address_3_state"
    t.string   "address_3_zipcode"
    t.string   "address_4_type"
    t.string   "address_4_main"
    t.string   "address_4_extra"
    t.string   "address_4_city"
    t.string   "address_4_state"
    t.string   "address_4_zipcode"
    t.string   "estimator"
    t.string   "priority"
    t.string   "primary_referral"
    t.string   "secondary_referral"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "inspections", force: :cascade do |t|
    t.datetime "appointment_date"
    t.datetime "date_inspected"
    t.string   "site_type"
    t.string   "name"
    t.string   "contact"
    t.string   "email"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_1_number"
    t.string   "phone_2_number"
    t.string   "work_assigned"
    t.string   "estimated_days_to_repair"
    t.string   "current_assignment_type"
    t.string   "original_assignment_type"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "insurances", force: :cascade do |t|
    t.string   "insurance_company"
    t.string   "policy_number"
    t.string   "claim_office"
    t.string   "phone_1_number"
    t.string   "phone_2_type"
    t.string   "phone_2_number"
    t.string   "phone_3_type"
    t.string   "phone_3_number"
    t.string   "adjuster"
    t.string   "insurance_agent"
    t.integer  "deductible"
    t.string   "claim_number"
    t.string   "claim_type"
    t.string   "type_of_loss"
    t.datetime "loss_date_time"
    t.string   "payer"
    t.integer  "insurer_prepaid_amount"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.string   "rental_company"
    t.string   "address_1_main"
    t.string   "address_2_main"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "phone_1_type"
    t.string   "phone_1_number"
    t.string   "phone_2_type"
    t.string   "phone_2_number"
    t.string   "phone_3_type"
    t.string   "phone_3_number"
    t.string   "rental_status"
    t.string   "rental_start"
    t.string   "coverage_money_per_day"
    t.string   "days"
    t.boolean  "approved_by_insurance"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "vin"
    t.string   "vehicle"
    t.string   "type"
    t.integer  "year"
    t.string   "make"
    t.string   "model"
    t.string   "body_style"
    t.string   "engine"
    t.integer  "mileage_in"
    t.integer  "mileage_out"
    t.date     "production_date"
    t.string   "fuel"
    t.string   "exterior_color"
    t.string   "interior_color"
    t.string   "paint_code"
    t.string   "trim_code"
    t.string   "license_plate"
    t.string   "license_plate_state"
    t.string   "license_expiration"
    t.string   "package_1"
    t.string   "package_2"
    t.string   "job_number"
    t.string   "repairable_condition"
    t.string   "primary_impact"
    t.string   "secondary_impact"
    t.string   "drivable_status"
    t.string   "p1"
    t.string   "p2"
    t.string   "p3"
    t.string   "p4"
    t.string   "p5"
    t.string   "p6"
    t.string   "p7"
    t.string   "p8"
    t.string   "p9"
    t.string   "p10"
    t.string   "p11"
    t.string   "p12"
    t.string   "p13"
    t.text     "impact_note"
    t.text     "prior_damage_note"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
