require "application_system_test_case"

class CobradesTest < ApplicationSystemTestCase
  setup do
    @cobrade = cobrades(:one)
  end

  test "visiting the index" do
    visit cobrades_url
    assert_selector "h1", text: "Cobrades"
  end

  test "creating a Cobrade" do
    visit cobrades_url
    click_on "New Cobrade"

    fill_in "Cod", with: @cobrade.cod
    fill_in "Description", with: @cobrade.description
    click_on "Create Cobrade"

    assert_text "Cobrade was successfully created"
    click_on "Back"
  end

  test "updating a Cobrade" do
    visit cobrades_url
    click_on "Edit", match: :first

    fill_in "Cod", with: @cobrade.cod
    fill_in "Description", with: @cobrade.description
    click_on "Update Cobrade"

    assert_text "Cobrade was successfully updated"
    click_on "Back"
  end

  test "destroying a Cobrade" do
    visit cobrades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cobrade was successfully destroyed"
  end
end
