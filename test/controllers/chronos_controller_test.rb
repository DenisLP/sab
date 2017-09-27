require 'test_helper'

class ChronosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get management" do
    get :management
    assert_response :success
  end

  test "should get detailing" do
    get :detailing
    assert_response :success
  end

  test "should get painting" do
    get :painting
    assert_response :success
  end

  test "should get rental" do
    get :rental
    assert_response :success
  end

  test "should get waiting" do
    get :waiting
    assert_response :success
  end

end
