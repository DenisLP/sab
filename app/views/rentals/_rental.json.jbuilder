json.extract! rental, :id, :rental_company, :address_1_main, :address_2_main, :city, :state, :zipcode, :phone_1_type, :phone_1_number, :phone_2_type, :phone_2_number, :phone_3_type, :phone_3_number, :rental_status, :rental_start, :coverage_money_per_day, :days, :approved_by_insurance, :created_at, :updated_at
json.url rental_url(rental, format: :json)
