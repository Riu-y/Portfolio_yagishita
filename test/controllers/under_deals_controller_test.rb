require 'test_helper'

class UnderDealsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get under_deals_index_url
    assert_response :success
  end

  test "should get show" do
    get under_deals_show_url
    assert_response :success
  end

  test "should get edit" do
    get under_deals_edit_url
    assert_response :success
  end

end
