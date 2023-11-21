require "application_system_test_case"

class BillDetailsTest < ApplicationSystemTestCase
  setup do
    @bill_detail = bill_details(:one)
  end

  test "visiting the index" do
    visit bill_details_url
    assert_selector "h1", text: "Bill details"
  end

  test "should create bill detail" do
    visit bill_details_url
    click_on "New bill detail"

    fill_in "Bill", with: @bill_detail.bill_id
    fill_in "Price per unit", with: @bill_detail.price_per_unit
    fill_in "Product", with: @bill_detail.product_id
    fill_in "Quantity", with: @bill_detail.quantity
    fill_in "Total price", with: @bill_detail.total_price
    click_on "Create Bill detail"

    assert_text "Bill detail was successfully created"
    click_on "Back"
  end

  test "should update Bill detail" do
    visit bill_detail_url(@bill_detail)
    click_on "Edit this bill detail", match: :first

    fill_in "Bill", with: @bill_detail.bill_id
    fill_in "Price per unit", with: @bill_detail.price_per_unit
    fill_in "Product", with: @bill_detail.product_id
    fill_in "Quantity", with: @bill_detail.quantity
    fill_in "Total price", with: @bill_detail.total_price
    click_on "Update Bill detail"

    assert_text "Bill detail was successfully updated"
    click_on "Back"
  end

  test "should destroy Bill detail" do
    visit bill_detail_url(@bill_detail)
    click_on "Destroy this bill detail", match: :first

    assert_text "Bill detail was successfully destroyed"
  end
end
