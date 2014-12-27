require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { company_id: @employee.company_id, current_balance: @employee.current_balance, current_pay: @employee.current_pay, date_of_birth: @employee.date_of_birth, date_of_hire: @employee.date_of_hire, employee_id: @employee.employee_id, gender: @employee.gender, name: @employee.name }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    patch :update, id: @employee, employee: { company_id: @employee.company_id, current_balance: @employee.current_balance, current_pay: @employee.current_pay, date_of_birth: @employee.date_of_birth, date_of_hire: @employee.date_of_hire, employee_id: @employee.employee_id, gender: @employee.gender, name: @employee.name }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
