require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "creating a Quote" do
    visit quotes_url
    click_on "New Quote"

    fill_in "Amount of elevator", with: @quote.amount_of_elevator
    fill_in "Installation", with: @quote.installation
    fill_in "Price per elevator", with: @quote.price_per_elevator
    fill_in "Total price", with: @quote.total_price
    fill_in "Total price of elevator", with: @quote.total_price_of_elevator
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "updating a Quote" do
    visit quotes_url
    click_on "Edit", match: :first

    fill_in "Amount of elevator", with: @quote.amount_of_elevator
    fill_in "Installation", with: @quote.installation
    fill_in "Price per elevator", with: @quote.price_per_elevator
    fill_in "Total price", with: @quote.total_price
    fill_in "Total price of elevator", with: @quote.total_price_of_elevator
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "destroying a Quote" do
    visit quotes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quote was successfully destroyed"
  end
end
