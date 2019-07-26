require 'test_helper'

class NivelDanzaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nivel_danza_index_url
    assert_response :success
  end

  test "should get show" do
    get nivel_danza_show_url
    assert_response :success
  end

  test "should get new" do
    get nivel_danza_new_url
    assert_response :success
  end

  test "should get create" do
    get nivel_danza_create_url
    assert_response :success
  end

  test "should get edit" do
    get nivel_danza_edit_url
    assert_response :success
  end

  test "should get update" do
    get nivel_danza_update_url
    assert_response :success
  end

  test "should get destroy" do
    get nivel_danza_destroy_url
    assert_response :success
  end

end
