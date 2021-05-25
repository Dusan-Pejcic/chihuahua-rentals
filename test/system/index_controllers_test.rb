require "application_system_test_case"

class IndexControllersTest < ApplicationSystemTestCase
  setup do
    @index_controller = index_controllers(:one)
  end

  test "visiting the index" do
    visit index_controllers_url
    assert_selector "h1", text: "Index Controllers"
  end

  test "creating a Index controller" do
    visit index_controllers_url
    click_on "New Index Controller"

    click_on "Create Index controller"

    assert_text "Index controller was successfully created"
    click_on "Back"
  end

  test "updating a Index controller" do
    visit index_controllers_url
    click_on "Edit", match: :first

    click_on "Update Index controller"

    assert_text "Index controller was successfully updated"
    click_on "Back"
  end

  test "destroying a Index controller" do
    visit index_controllers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Index controller was successfully destroyed"
  end
end
