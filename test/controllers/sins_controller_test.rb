require 'test_helper'

class SinsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sins_new_url
    assert_response :success
  end

  test "should get create" do
    get sins_create_url
    assert_response :success
  end

  test "should get edit" do
    get sins_edit_url
    assert_response :success
  end

  test "should get update" do
    get sins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sins_destroy_url
    assert_response :success
  end

  test "should get index" do
    get sins_index_url
    assert_response :success
  end

  test "should get show" do
    get sins_show_url
    assert_response :success
  end

end
