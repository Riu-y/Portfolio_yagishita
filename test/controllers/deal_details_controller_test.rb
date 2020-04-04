require 'test_helper'

class DealDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deal_details_index_url
    assert_response :success
  end

end
