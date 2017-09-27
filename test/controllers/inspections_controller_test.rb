require 'test_helper'

class InspectionsControllerTest < ActionController::TestCase
  setup do
    @inspection = inspections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inspections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inspection" do
    assert_difference('Inspection.count') do
      post :create, inspection: { address: @inspection.address, appointment_date: @inspection.appointment_date, city: @inspection.city, contact: @inspection.contact, current_assignment_type: @inspection.current_assignment_type, date_inspected: @inspection.date_inspected, email: @inspection.email, estimated_days_to_repair: @inspection.estimated_days_to_repair, name: @inspection.name, original_assignment_type: @inspection.original_assignment_type, phone_1_number: @inspection.phone_1_number, phone_2_number: @inspection.phone_2_number, site_type: @inspection.site_type, state: @inspection.state, work_assigned: @inspection.work_assigned, zipcode: @inspection.zipcode }
    end

    assert_redirected_to inspection_path(assigns(:inspection))
  end

  test "should show inspection" do
    get :show, id: @inspection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inspection
    assert_response :success
  end

  test "should update inspection" do
    patch :update, id: @inspection, inspection: { address: @inspection.address, appointment_date: @inspection.appointment_date, city: @inspection.city, contact: @inspection.contact, current_assignment_type: @inspection.current_assignment_type, date_inspected: @inspection.date_inspected, email: @inspection.email, estimated_days_to_repair: @inspection.estimated_days_to_repair, name: @inspection.name, original_assignment_type: @inspection.original_assignment_type, phone_1_number: @inspection.phone_1_number, phone_2_number: @inspection.phone_2_number, site_type: @inspection.site_type, state: @inspection.state, work_assigned: @inspection.work_assigned, zipcode: @inspection.zipcode }
    assert_redirected_to inspection_path(assigns(:inspection))
  end

  test "should destroy inspection" do
    assert_difference('Inspection.count', -1) do
      delete :destroy, id: @inspection
    end

    assert_redirected_to inspections_path
  end
end
