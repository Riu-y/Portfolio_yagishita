require 'test_helper'

class AdClients::CompleteDealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_clients_complete_deals_index_url
    assert_response :success
  end

  test "should get show" do
    get ad_clients_complete_deals_show_url
    assert_response :success
  end

end
