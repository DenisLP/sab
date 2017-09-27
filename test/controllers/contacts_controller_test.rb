require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact" do
    assert_difference('Contact.count') do
      post :create, contact: { address_1_city: @contact.address_1_city, address_1_extra: @contact.address_1_extra, address_1_main: @contact.address_1_main, address_1_state: @contact.address_1_state, address_1_type: @contact.address_1_type, address_1_zipcode: @contact.address_1_zipcode, address_2_city: @contact.address_2_city, address_2_extra: @contact.address_2_extra, address_2_main: @contact.address_2_main, address_2_state: @contact.address_2_state, address_2_type: @contact.address_2_type, address_2_zipcode: @contact.address_2_zipcode, address_3_city: @contact.address_3_city, address_3_extra: @contact.address_3_extra, address_3_main: @contact.address_3_main, address_3_state: @contact.address_3_state, address_3_type: @contact.address_3_type, address_3_zipcode: @contact.address_3_zipcode, address_4_city: @contact.address_4_city, address_4_extra: @contact.address_4_extra, address_4_main: @contact.address_4_main, address_4_state: @contact.address_4_state, address_4_type: @contact.address_4_type, address_4_zipcode: @contact.address_4_zipcode, age: @contact.age, company: @contact.company, contact_type: @contact.contact_type, email: @contact.email, estimator: @contact.estimator, first_name: @contact.first_name, first_name_abreviation: @contact.first_name_abreviation, gender: @contact.gender, last_name: @contact.last_name, phone_1_number: @contact.phone_1_number, phone_1_type: @contact.phone_1_type, phone_2_number: @contact.phone_2_number, phone_2_type: @contact.phone_2_type, phone_3_number: @contact.phone_3_number, phone_3_type: @contact.phone_3_type, primary_referral: @contact.primary_referral, priority: @contact.priority, secondary_referral: @contact.secondary_referral }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    patch :update, id: @contact, contact: { address_1_city: @contact.address_1_city, address_1_extra: @contact.address_1_extra, address_1_main: @contact.address_1_main, address_1_state: @contact.address_1_state, address_1_type: @contact.address_1_type, address_1_zipcode: @contact.address_1_zipcode, address_2_city: @contact.address_2_city, address_2_extra: @contact.address_2_extra, address_2_main: @contact.address_2_main, address_2_state: @contact.address_2_state, address_2_type: @contact.address_2_type, address_2_zipcode: @contact.address_2_zipcode, address_3_city: @contact.address_3_city, address_3_extra: @contact.address_3_extra, address_3_main: @contact.address_3_main, address_3_state: @contact.address_3_state, address_3_type: @contact.address_3_type, address_3_zipcode: @contact.address_3_zipcode, address_4_city: @contact.address_4_city, address_4_extra: @contact.address_4_extra, address_4_main: @contact.address_4_main, address_4_state: @contact.address_4_state, address_4_type: @contact.address_4_type, address_4_zipcode: @contact.address_4_zipcode, age: @contact.age, company: @contact.company, contact_type: @contact.contact_type, email: @contact.email, estimator: @contact.estimator, first_name: @contact.first_name, first_name_abreviation: @contact.first_name_abreviation, gender: @contact.gender, last_name: @contact.last_name, phone_1_number: @contact.phone_1_number, phone_1_type: @contact.phone_1_type, phone_2_number: @contact.phone_2_number, phone_2_type: @contact.phone_2_type, phone_3_number: @contact.phone_3_number, phone_3_type: @contact.phone_3_type, primary_referral: @contact.primary_referral, priority: @contact.priority, secondary_referral: @contact.secondary_referral }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
