require 'test_helper'

class AthleteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get athlete_index_url
    assert_response :success
  end

  test "should get show" do
    get athlete_show_url
    assert_response :success
  end

  test "should get new" do
    get athlete_new_url
    assert_response :success
  end

  test "should get edit" do
    get athlete_edit_url
    assert_response :success
  end

end
