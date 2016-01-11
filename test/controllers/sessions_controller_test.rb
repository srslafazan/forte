require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sessions_index_url
    assert_response :success
  end

  test "should get about" do
    get sessions_about_url
    assert_response :success
  end

  test "should get contact" do
    get sessions_contact_url
    assert_response :success
  end

  test "should get involve" do
    get sessions_involve_url
    assert_response :success
  end

  test "should get finish_profile" do
    get sessions_finish_profile_url
    assert_response :success
  end

  test "should get profile" do
    get sessions_profile_url
    assert_response :success
  end

  test "should get edit_profile" do
    get sessions_edit_profile_url
    assert_response :success
  end

  test "should get feedback" do
    get sessions_feedback_url
    assert_response :success
  end

  test "should get payments" do
    get sessions_payments_url
    assert_response :success
  end

  test "should get support" do
    get sessions_support_url
    assert_response :success
  end

end
