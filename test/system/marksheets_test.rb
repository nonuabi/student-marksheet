require "application_system_test_case"

class MarksheetsTest < ApplicationSystemTestCase
  setup do
    @marksheet = marksheets(:one)
  end

  test "visiting the index" do
    visit marksheets_url
    assert_selector "h1", text: "Marksheets"
  end

  test "creating a Marksheet" do
    visit marksheets_url
    click_on "New Marksheet"

    fill_in "Name", with: @marksheet.name
    fill_in "Subject five", with: @marksheet.subject_five
    fill_in "Subject four", with: @marksheet.subject_four
    fill_in "Subject one", with: @marksheet.subject_one
    fill_in "Subject three", with: @marksheet.subject_three
    fill_in "Subject two", with: @marksheet.subject_two
    click_on "Create Marksheet"

    assert_text "Marksheet was successfully created"
    click_on "Back"
  end

  test "updating a Marksheet" do
    visit marksheets_url
    click_on "Edit", match: :first

    fill_in "Name", with: @marksheet.name
    fill_in "Subject five", with: @marksheet.subject_five
    fill_in "Subject four", with: @marksheet.subject_four
    fill_in "Subject one", with: @marksheet.subject_one
    fill_in "Subject three", with: @marksheet.subject_three
    fill_in "Subject two", with: @marksheet.subject_two
    click_on "Update Marksheet"

    assert_text "Marksheet was successfully updated"
    click_on "Back"
  end

  test "destroying a Marksheet" do
    visit marksheets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marksheet was successfully destroyed"
  end
end
