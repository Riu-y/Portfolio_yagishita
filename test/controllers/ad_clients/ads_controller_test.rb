require 'test_helper'

class AdClients::AdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_clients_ads_index_url
    assert_response :success
  end

  test "should get new" do
    get ad_clients_ads_new_url
    assert_response :success
  end

  test "should get edit" do
    get ad_clients_ads_edit_url
    assert_response :success
  end

end
