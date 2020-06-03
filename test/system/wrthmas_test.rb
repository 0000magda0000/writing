require "application_system_test_case"

class WrthmasTest < ApplicationSystemTestCase
  setup do
    @wrthma = wrthmas(:one)
  end

  test "visiting the index" do
    visit wrthmas_url
    assert_selector "h1", text: "Wrthmas"
  end

  test "creating a Wrthma" do
    visit wrthmas_url
    click_on "New Wrthma"

    fill_in "Name", with: @wrthma.name
    fill_in "Title", with: @wrthma.title
    click_on "Create Wrthma"

    assert_text "Wrthma was successfully created"
    click_on "Back"
  end

  test "updating a Wrthma" do
    visit wrthmas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @wrthma.name
    fill_in "Title", with: @wrthma.title
    click_on "Update Wrthma"

    assert_text "Wrthma was successfully updated"
    click_on "Back"
  end

  test "destroying a Wrthma" do
    visit wrthmas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wrthma was successfully destroyed"
  end
end
