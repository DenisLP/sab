require 'test_helper'

class RentalsControllerTest < ActionController::TestCase
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post :create, rental: { address_1_main: @rental.address_1_main, address_2_main: @rental.address_2_main, approved_by_insurance: @rental.approved_by_insurance, city: @rental.city, coverage_money_per_day: @rental.coverage_money_per_day, days: @rental.days, phone_1_number: @rental.phone_1_number, phone_1_type: @rental.phone_1_type, phone_2_number: @rental.phone_2_number, phone_2_type: @rental.phone_2_type, phone_3_number: @rental.phone_3_number, phone_3_type: @rental.phone_3_type, rental_company: @rental.rental_company, rental_start: @rental.rental_start, rental_status: @rental.rental_status, state: @rental.state, zipcode: @rental.zipcode }
    end

    assert_redirected_to rental_path(assigns(:rental))
  end

  test "should show rental" do
    get :show, id: @rental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rental
    assert_response :success
  end

  test "should update rental" do
    patch :update, id: @rental, rental: { address_1_main: @rental.address_1_main, address_2_main: @rental.address_2_main, approved_by_insurance: @rental.approved_by_insurance, city: @rental.city, coverage_money_per_day: @rental.coverage_money_per_day, days: @rental.days, phone_1_number: @rental.phone_1_number, phone_1_type: @rental.phone_1_type, phone_2_number: @rental.phone_2_number, phone_2_type: @rental.phone_2_type, phone_3_number: @rental.phone_3_number, phone_3_type: @rental.phone_3_type, rental_company: @rental.rental_company, rental_start: @rental.rental_start, rental_status: @rental.rental_status, state: @rental.state, zipcode: @rental.zipcode }
    assert_redirected_to rental_path(assigns(:rental))
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete :destroy, id: @rental
    end

    assert_redirected_to rentals_path
  end
end
