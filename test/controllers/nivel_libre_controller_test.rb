require 'test_helper'

class NivelLibreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nivel_libre_index_url
    assert_response :success
  end

  test "should get show" do
    get nivel_libre_show_url
    assert_response :success
  end

  test "should get new" do
    get nivel_libre_new_url
    assert_response :success
  end

  test "should get create" do
    get nivel_libre_create_url
    assert_response :success
  end

  test "should get edit" do
    get nivel_libre_edit_url
    assert_response :success
  end

  test "should get update" do
    get nivel_libre_update_url
    assert_response :success
  end

  test "should get destroy" do
    get nivel_libre_destroy_url
    assert_response :success
  end

end
