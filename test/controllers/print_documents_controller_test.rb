require 'test_helper'

class PrintDocumentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get print" do
    get :print
    assert_response :success
  end

end
