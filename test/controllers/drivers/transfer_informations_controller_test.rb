require 'test_helper'

class Drivers::TransferInformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drivers_transfer_informations_index_url
    assert_response :success
  end

  test "should get edit" do
    get drivers_transfer_informations_edit_url
    assert_response :success
  end

end
