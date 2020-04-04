require 'test_helper'

class AdClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ad_clients_index_url
    assert_response :success
  end

  test "should get edit" do
    get ad_clients_edit_url
    assert_response :success
  end

end
