require 'test_helper'

class AdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ads_index_url
    assert_response :success
  end

  test "should get show" do
    get ads_show_url
    assert_response :success
  end

  test "should get genre_serch" do
    get ads_genre_serch_url
    assert_response :success
  end

  test "should get favorite_serch" do
    get ads_favorite_serch_url
    assert_response :success
  end

  test "should get apply" do
    get ads_apply_url
    assert_response :success
  end

end
