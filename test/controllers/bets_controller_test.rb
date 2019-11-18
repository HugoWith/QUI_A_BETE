require 'test_helper'

class BetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bets_index_url
    assert_response :success
  end

  test "should get show" do
    get bets_show_url
    assert_response :success
  end

  test "should get new" do
    get bets_new_url
    assert_response :success
  end

  test "should get create" do
    get bets_create_url
    assert_response :success
  end

  test "should get edit" do
    get bets_edit_url
    assert_response :success
  end

  test "should get update" do
    get bets_update_url
    assert_response :success
  end

  test "should get destroy" do
    get bets_destroy_url
    assert_response :success
  end

end
