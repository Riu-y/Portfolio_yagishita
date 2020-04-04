require 'test_helper'

class Drivers::CarInformationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get drivers_car_informations_index_url
    assert_response :success
  end

  test "should get edit" do
    get drivers_car_informations_edit_url
    assert_response :success
  end

end
