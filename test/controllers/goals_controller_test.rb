require "test_helper"

class GoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get goals_create_url
    assert_response :success
  end

  test "should get update" do
    get goals_update_url
    assert_response :success
  end

  test "should get delete" do
    get goals_delete_url
    assert_response :success
  end

  test "should get about" do
    get goals_about_url
    assert_response :success
  end

  test "should get list_all" do
    get goals_url
    assert_response :success
  end

  test "should get list_compl" do
    get goal_complete_url
    assert_response :success
  end
end
