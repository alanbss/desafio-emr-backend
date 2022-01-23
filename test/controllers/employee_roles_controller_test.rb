require "test_helper"

class EmployeeRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employee_role = employee_roles(:one)
  end

  test "should get index" do
    get employee_roles_url, as: :json
    assert_response :success
  end

  test "should create employee_role" do
    assert_difference('EmployeeRole.count') do
      post employee_roles_url, params: { employee_role: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show employee_role" do
    get employee_role_url(@employee_role), as: :json
    assert_response :success
  end

  test "should update employee_role" do
    patch employee_role_url(@employee_role), params: { employee_role: {  } }, as: :json
    assert_response 200
  end

  test "should destroy employee_role" do
    assert_difference('EmployeeRole.count', -1) do
      delete employee_role_url(@employee_role), as: :json
    end

    assert_response 204
  end
end
