require "application_system_test_case"

class GuitarsTest < ApplicationSystemTestCase
  setup do
    @guitar = guitars(:one)
  end

  test "visiting the index" do
    visit guitars_url
    assert_selector "h1", text: "Guitars"
  end

  test "should create guitar" do
    visit guitars_url
    click_on "New guitar"

    fill_in "Brand", with: @guitar.brand_id
    fill_in "Description", with: @guitar.description
    fill_in "Model", with: @guitar.model_id
    fill_in "Name", with: @guitar.name
    fill_in "Picture", with: @guitar.picture
    fill_in "Purchase date", with: @guitar.purchase_date
    fill_in "Purchase year", with: @guitar.purchase_year
    check "Second hand" if @guitar.second_hand
    fill_in "Series number", with: @guitar.series_number
    fill_in "Shop name", with: @guitar.shop_name
    click_on "Create Guitar"

    assert_text "Guitar was successfully created"
    click_on "Back"
  end

  test "should update Guitar" do
    visit guitar_url(@guitar)
    click_on "Edit this guitar", match: :first

    fill_in "Brand", with: @guitar.brand_id
    fill_in "Description", with: @guitar.description
    fill_in "Model", with: @guitar.model_id
    fill_in "Name", with: @guitar.name
    fill_in "Picture", with: @guitar.picture
    fill_in "Purchase date", with: @guitar.purchase_date
    fill_in "Purchase year", with: @guitar.purchase_year
    check "Second hand" if @guitar.second_hand
    fill_in "Series number", with: @guitar.series_number
    fill_in "Shop name", with: @guitar.shop_name
    click_on "Update Guitar"

    assert_text "Guitar was successfully updated"
    click_on "Back"
  end

  test "should destroy Guitar" do
    visit guitar_url(@guitar)
    click_on "Destroy this guitar", match: :first

    assert_text "Guitar was successfully destroyed"
  end
end
