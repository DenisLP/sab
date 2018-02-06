class WizController < ApplicationController
  before_action :set_contact, only: []

  def step1 #Contact
    if try_find_customer
      @message = 'Contact: ' + @contact.phone_1_number
    else
      @message = 'Any Contact was found.'
      @contact = Contact.new
    end
  end
  
  def step11 #Contacts
    if try_find_customer
      @message = 'Contact: ' + @contact.phone_1_number
    else
      @message = 'Any Contact was found.'
      @contact = Contact.new
    end
  end

  def step2 #Vehicle
    try_find_vehicle
    
    if params[:contact]
      @contact = params[:contact]
    end
    
  end
  
  def step21 #Vehicle
    try_find_vehicle
    
    if params[:contact]
      @contact = params[:contact]
    end
    
  end
  
  def other_services
  end

  def step3
    try_find_vehicle
    try_find_customer

    @contact = params[:contact]
    @agent_pin = params[:agent_pin]
    @photo = Photo.last
    # @vehicle = Vehicle.new()
  end

  def step4
    @insurance = Insurance.new() 
  end
  
  def step5
    @contact = Contact.new
  end
  
  def step6
    @contact = Contact.new
  end
  
  def step7
    @contact = Contact.new
  end
  
  def step8
    @contact = Contact.new
  end
  
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:phone_1_number)
      # params.require(:contact).permit(:id, :company, :first_name, :last_name, :phone_1_number)
      # params.require(:contact).permit(:id, :contact_type, :company, :first_name_abreviation, :first_name, :last_name, :email, :age, :phone_1_type, :phone_1_number, :address_1_type, :address_1_main, :address_1_extra, :address_1_city, :address_1_state, :address_1_zipcode, :estimator)
    end
    
    def vehicle_params
      params.require(:vehicle).permit(:vin, :vehicle, :type_of_car, :year, :make, :model, :body_style, :engine, :mileage_in, :mileage_out, :production_date, :fuel, :exterior_color, :interior_color, :paint_code, :trim_code, :license_plate, :license_plate_state, :license_expiration, :package_1, :package_2, :job_number, :repairable_condition, :primary_impact, :secondary_impact, :drivable_status, :p1, :p2, :p3, :p4, :p5, :p6, :p7, :p8, :p9, :p10, :p11, :p12, :p13, :impact_note, :prior_damage_note)
    end
    
    
    
    def try_find_customer
      
      @message = 'Finding contact...'
      if params[:phone_1_number]
        @message = 'Found contact by Phone1'
        return @contact = Contact.find_by(phone_1_number: params[:phone_1_number])
      end
      
      if params['contact[phone_1_number]']
        @message = 'Found contact by Contact_phone_1_number'
        return @contact = Contact.find_by(phone_1_number: params['contact[phone_1_number]'])
      end
      
      if params['phone_1_number']
        @message = 'Found contact by phone_1_number'
        return @contact = Contact.find_by(phone_1_number: params['phone_1_number'])
      end
      
      if params[:id]
        @message = 'Found contact by Id'
        return @contact = Contact.find(params['contact[id]'])
      end
      
      if params[:contact]
        @contact = params[:contact]
        @message = 'Found contact by Contact'
        if @contact['id']
          @message = 'Found contact by Contact[id]'
          return @contact = Contact.find_by(phone_1_number: @contact['id'])
        end
      end
      
      if params[:contact]
        @contact = params[:contact]
        @message = 'Found contact by Contact'
        if @contact['phone_1_number']
          @message = 'Found contact by Contact[phone_1_number]' 
          return @contact = Contact.find_by(phone_1_number: @contact['phone_1_number'])
        end
      end
    end
      

    def try_find_vehicle
      
      @vehicle = Vehicle.new
      
      if params['vehicle']
          vechicle_info = params['vehicle']
        if vechicle_info
          @vin = vechicle_info['vin']
        end
      end
      puts 'VIN: ' + @vin.to_s
      
      if @vin
  
        # 2003 TOYOTA CAMRY 4T1BE32K33U752813
        # 2016 KIA SORENTO  5XYPG4A36GG092780
        # https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/4T1BE32K33U752813?format=json
        # https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/5XYPG4A36GG092780?format=json
        @resp = HTTParty.get('https://vpic.nhtsa.dot.gov/api/vehicles/decodevin/'+@vin+'?format=json')
        
        @vehicle.vin = @vin
        @vehicle.make = @resp['Results'][5]['Value']
        @vehicle.model = @resp['Results'][7]['Value']
        @vehicle.year = @resp['Results'][8]['Value']
        @vehicle.fuel = @resp['Results'][15]['Value']
        @vehicle.type_of_car = @resp['Results'][11]['Value']
        @vehicle.engine = @resp['Results'][71]['Value']
        @vehicle.fuel = @resp['Results'][73]['Value']
        @vehicle.trim_code = @resp['Results'][10]['Value']
  
      end
    
    end
end
