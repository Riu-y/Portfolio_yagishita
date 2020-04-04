require 'test_helper'

class Admin::AdClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_ad_clients_index_url
    assert_response :success
  end

  test "should get show" do
    get admin_ad_clients_show_url
    assert_response :success
  end

end
