require 'test_helper'

class DeallingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deallings_index_url
    assert_response :success
  end

  test "should get show" do
    get deallings_show_url
    assert_response :success
  end

  test "should get edit" do
    get deallings_edit_url
    assert_response :success
  end

end
