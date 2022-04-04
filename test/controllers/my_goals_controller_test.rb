require "test_helper"

class MyGoalsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get my_goals_create_url
    assert_response :success
  end

  test "should get update" do
    get my_goals_update_url
    assert_response :success
  end

  test "should get delete" do
    get my_goals_delete_url
    assert_response :success
  end

  test "should get about" do
    get my_goals_about_url
    assert_response :success
  end

  test "should get list_all" do
    get my_goals_list_all_url
    assert_response :success
  end

  test "should get list_compl" do
    get my_goals_list_compl_url
    assert_response :success
  end

  test "should get list_incompl" do
    get my_goals_list_incompl_url
    assert_response :success
  end
end
