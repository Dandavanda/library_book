require "application_system_test_case"

class ReturnsTest < ApplicationSystemTestCase
  setup do
    @return = returns(:one)
  end

  test "visiting the index" do
    visit returns_url
    assert_selector "h1", text: "Returns"
  end

  test "creating a Return" do
    visit returns_url
    click_on "New Return"

    fill_in "Date borrower", with: @return.date_borrower
    click_on "Create Return"

    assert_text "Return was successfully created"
    click_on "Back"
  end

  test "updating a Return" do
    visit returns_url
    click_on "Edit", match: :first

    fill_in "Date borrower", with: @return.date_borrower
    click_on "Update Return"

    assert_text "Return was successfully updated"
    click_on "Back"
  end

  test "destroying a Return" do
    visit returns_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Return was successfully destroyed"
  end
end
