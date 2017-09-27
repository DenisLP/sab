require 'test_helper'

class InsurancesControllerTest < ActionController::TestCase
  setup do
    @insurance = insurances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insurances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insurance" do
    assert_difference('Insurance.count') do
      post :create, insurance: { adjuster: @insurance.adjuster, claim_number: @insurance.claim_number, claim_office: @insurance.claim_office, claim_type: @insurance.claim_type, deductible: @insurance.deductible, insurance_agent: @insurance.insurance_agent, insurance_company: @insurance.insurance_company, insurer_prepaid_amount: @insurance.insurer_prepaid_amount, loss_date_time: @insurance.loss_date_time, payer: @insurance.payer, phone_1_number: @insurance.phone_1_number, phone_2_number: @insurance.phone_2_number, phone_2_type: @insurance.phone_2_type, phone_3_number: @insurance.phone_3_number, phone_3_type: @insurance.phone_3_type, policy_number: @insurance.policy_number, type_of_loss: @insurance.type_of_loss }
    end

    assert_redirected_to insurance_path(assigns(:insurance))
  end

  test "should show insurance" do
    get :show, id: @insurance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insurance
    assert_response :success
  end

  test "should update insurance" do
    patch :update, id: @insurance, insurance: { adjuster: @insurance.adjuster, claim_number: @insurance.claim_number, claim_office: @insurance.claim_office, claim_type: @insurance.claim_type, deductible: @insurance.deductible, insurance_agent: @insurance.insurance_agent, insurance_company: @insurance.insurance_company, insurer_prepaid_amount: @insurance.insurer_prepaid_amount, loss_date_time: @insurance.loss_date_time, payer: @insurance.payer, phone_1_number: @insurance.phone_1_number, phone_2_number: @insurance.phone_2_number, phone_2_type: @insurance.phone_2_type, phone_3_number: @insurance.phone_3_number, phone_3_type: @insurance.phone_3_type, policy_number: @insurance.policy_number, type_of_loss: @insurance.type_of_loss }
    assert_redirected_to insurance_path(assigns(:insurance))
  end

  test "should destroy insurance" do
    assert_difference('Insurance.count', -1) do
      delete :destroy, id: @insurance
    end

    assert_redirected_to insurances_path
  end
end
