require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get lessons_create_url
    assert_response :success
  end

  test "should get update" do
    get lessons_update_url
    assert_response :success
  end

  test "should get destroy" do
    get lessons_destroy_url
    assert_response :success
  end

end
