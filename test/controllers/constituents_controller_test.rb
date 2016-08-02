require 'test_helper'

class ConstituentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constituent = constituents(:one)
  end

  test "should get index" do
    get constituents_url
    assert_response :success
  end

  test "should get new" do
    get new_constituent_url
    assert_response :success
  end

  test "should create constituent" do
    assert_difference('Constituent.count') do
      post constituents_url, params: { constituent: { assigned_to: @constituent.assigned_to, contact_id: @constituent.contact_id, contact_info: @constituent.contact_info, issue: @constituent.issue, member_name: @constituent.member_name, psi: @constituent.psi, status: @constituent.status } }
    end

    assert_redirected_to constituent_url(Constituent.last)
  end

  test "should show constituent" do
    get constituent_url(@constituent)
    assert_response :success
  end

  test "should get edit" do
    get edit_constituent_url(@constituent)
    assert_response :success
  end

  test "should update constituent" do
    patch constituent_url(@constituent), params: { constituent: { assigned_to: @constituent.assigned_to, contact_id: @constituent.contact_id, contact_info: @constituent.contact_info, issue: @constituent.issue, member_name: @constituent.member_name, psi: @constituent.psi, status: @constituent.status } }
    assert_redirected_to constituent_url(@constituent)
  end

  test "should destroy constituent" do
    assert_difference('Constituent.count', -1) do
      delete constituent_url(@constituent)
    end

    assert_redirected_to constituents_url
  end
end
