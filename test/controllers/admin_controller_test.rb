require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_new_url
    assert_response :success
  end

  test "should get login" do
    get admin_login_url
    assert_response :success
  end

  test "should get dashboard" do
    get admin_dashboard_url
    assert_response :success
  end

  test "should get view_student" do
    get admin_view_student_url
    assert_response :success
  end

  test "should get view_tutor" do
    get admin_view_tutor_url
    assert_response :success
  end

end
