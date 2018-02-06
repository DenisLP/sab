require 'test_helper'

class AgentControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get select" do
    get :select
    assert_response :success
  end

end
