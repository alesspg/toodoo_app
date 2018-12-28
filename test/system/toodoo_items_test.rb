require "application_system_test_case"

class ToodooItemsTest < ApplicationSystemTestCase
  setup do
    @toodoo_item = toodoo_items(:one)
  end

  test "visiting the index" do
    visit toodoo_items_url
    assert_selector "h1", text: "Toodoo Items"
  end

  test "creating a Toodoo item" do
    visit toodoo_items_url
    click_on "New Toodoo Item"

    fill_in "Description", with: @toodoo_item.description
    click_on "Create Toodoo item"

    assert_text "Toodoo item was successfully created"
    click_on "Back"
  end

  test "updating a Toodoo item" do
    visit toodoo_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @toodoo_item.description
    click_on "Update Toodoo item"

    assert_text "Toodoo item was successfully updated"
    click_on "Back"
  end

  test "destroying a Toodoo item" do
    visit toodoo_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toodoo item was successfully destroyed"
  end
end
