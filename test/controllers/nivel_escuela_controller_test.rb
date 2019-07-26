require 'test_helper'

class NivelEscuelaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nivel_escuela_index_url
    assert_response :success
  end

  test "should get show" do
    get nivel_escuela_show_url
    assert_response :success
  end

  test "should get new" do
    get nivel_escuela_new_url
    assert_response :success
  end

  test "should get create" do
    get nivel_escuela_create_url
    assert_response :success
  end

  test "should get edit" do
    get nivel_escuela_edit_url
    assert_response :success
  end

  test "should get update" do
    get nivel_escuela_update_url
    assert_response :success
  end

  test "should get destroy" do
    get nivel_escuela_destroy_url
    assert_response :success
  end

end
