require 'test_helper'

class TutorsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tutors_create_url
    assert_response :success
  end

  test "should get update" do
    get tutors_update_url
    assert_response :success
  end

  test "should get login" do
    get tutors_login_url
    assert_response :success
  end

  test "should get destroy" do
    get tutors_destroy_url
    assert_response :success
  end

end
