require 'test_helper'

class CompletedDealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get completed_deals_index_url
    assert_response :success
  end

  test "should get show" do
    get completed_deals_show_url
    assert_response :success
  end

end
