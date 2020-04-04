require 'test_helper'

class Admin::DriversControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_drivers_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_drivers_show_url
    assert_response :success
  end

end
