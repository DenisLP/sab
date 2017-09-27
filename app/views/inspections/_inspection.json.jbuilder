json.extract! inspection, :id, :appointment_date, :date_inspected, :site_type, :name, :contact, :email, :address, :city, :state, :zipcode, :phone_1_number, :phone_2_number, :work_assigned, :estimated_days_to_repair, :current_assignment_type, :original_assignment_type, :created_at, :updated_at
json.url inspection_url(inspection, format: :json)
