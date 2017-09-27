require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { body_style: @vehicle.body_style, drivable_status: @vehicle.drivable_status, engine: @vehicle.engine, exterior_color: @vehicle.exterior_color, fuel: @vehicle.fuel, impact_note: @vehicle.impact_note, interior_color: @vehicle.interior_color, job_number: @vehicle.job_number, license_expiration: @vehicle.license_expiration, license_plate: @vehicle.license_plate, license_plate_state: @vehicle.license_plate_state, make: @vehicle.make, mileage_in: @vehicle.mileage_in, mileage_out: @vehicle.mileage_out, model: @vehicle.model, p10: @vehicle.p10, p11: @vehicle.p11, p12: @vehicle.p12, p13: @vehicle.p13, p1: @vehicle.p1, p2: @vehicle.p2, p3: @vehicle.p3, p4: @vehicle.p4, p5: @vehicle.p5, p6: @vehicle.p6, p7: @vehicle.p7, p8: @vehicle.p8, p9: @vehicle.p9, package_1: @vehicle.package_1, package_2: @vehicle.package_2, paint_code: @vehicle.paint_code, primary_impact: @vehicle.primary_impact, prior_damage_note: @vehicle.prior_damage_note, production_date: @vehicle.production_date, repairable_condition: @vehicle.repairable_condition, secondary_impact: @vehicle.secondary_impact, trim_code: @vehicle.trim_code, type_of_car: @vehicle.type_of_car, vehicle: @vehicle.vehicle, vin: @vehicle.vin, year: @vehicle.year }
    end

    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should show vehicle" do
    get :show, id: @vehicle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vehicle
    assert_response :success
  end

  test "should update vehicle" do
    patch :update, id: @vehicle, vehicle: { body_style: @vehicle.body_style, drivable_status: @vehicle.drivable_status, engine: @vehicle.engine, exterior_color: @vehicle.exterior_color, fuel: @vehicle.fuel, impact_note: @vehicle.impact_note, interior_color: @vehicle.interior_color, job_number: @vehicle.job_number, license_expiration: @vehicle.license_expiration, license_plate: @vehicle.license_plate, license_plate_state: @vehicle.license_plate_state, make: @vehicle.make, mileage_in: @vehicle.mileage_in, mileage_out: @vehicle.mileage_out, model: @vehicle.model, p10: @vehicle.p10, p11: @vehicle.p11, p12: @vehicle.p12, p13: @vehicle.p13, p1: @vehicle.p1, p2: @vehicle.p2, p3: @vehicle.p3, p4: @vehicle.p4, p5: @vehicle.p5, p6: @vehicle.p6, p7: @vehicle.p7, p8: @vehicle.p8, p9: @vehicle.p9, package_1: @vehicle.package_1, package_2: @vehicle.package_2, paint_code: @vehicle.paint_code, primary_impact: @vehicle.primary_impact, prior_damage_note: @vehicle.prior_damage_note, production_date: @vehicle.production_date, repairable_condition: @vehicle.repairable_condition, secondary_impact: @vehicle.secondary_impact, trim_code: @vehicle.trim_code, type_of_car: @vehicle.type_of_car, vehicle: @vehicle.vehicle, vin: @vehicle.vin, year: @vehicle.year }
    assert_redirected_to vehicle_path(assigns(:vehicle))
  end

  test "should destroy vehicle" do
    assert_difference('Vehicle.count', -1) do
      delete :destroy, id: @vehicle
    end

    assert_redirected_to vehicles_path
  end
end
