require "test_helper"

class GuitarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar = guitars(:one)
  end

  test "should get index" do
    get guitars_url
    assert_response :success
  end

  test "should get new" do
    get new_guitar_url
    assert_response :success
  end

  test "should create guitar" do
    assert_difference("Guitar.count") do
      post guitars_url, params: { guitar: { brand_id: @guitar.brand_id, description: @guitar.description, model_id: @guitar.model_id, name: @guitar.name, picture: @guitar.picture, purchase_date: @guitar.purchase_date, purchase_year: @guitar.purchase_year, second_hand: @guitar.second_hand, series_number: @guitar.series_number, shop_name: @guitar.shop_name } }
    end

    assert_redirected_to guitar_url(Guitar.last)
  end

  test "should show guitar" do
    get guitar_url(@guitar)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitar_url(@guitar)
    assert_response :success
  end

  test "should update guitar" do
    patch guitar_url(@guitar), params: { guitar: { brand_id: @guitar.brand_id, description: @guitar.description, model_id: @guitar.model_id, name: @guitar.name, picture: @guitar.picture, purchase_date: @guitar.purchase_date, purchase_year: @guitar.purchase_year, second_hand: @guitar.second_hand, series_number: @guitar.series_number, shop_name: @guitar.shop_name } }
    assert_redirected_to guitar_url(@guitar)
  end

  test "should destroy guitar" do
    assert_difference("Guitar.count", -1) do
      delete guitar_url(@guitar)
    end

    assert_redirected_to guitars_url
  end
end
