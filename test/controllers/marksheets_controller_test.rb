require 'test_helper'

class MarksheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marksheet = marksheets(:one)
  end

  test "should get index" do
    get marksheets_url
    assert_response :success
  end

  test "should get new" do
    get new_marksheet_url
    assert_response :success
  end

  test "should create marksheet" do
    assert_difference('Marksheet.count') do
      post marksheets_url, params: { marksheet: { name: @marksheet.name, subject_five: @marksheet.subject_five, subject_four: @marksheet.subject_four, subject_one: @marksheet.subject_one, subject_three: @marksheet.subject_three, subject_two: @marksheet.subject_two } }
    end

    assert_redirected_to marksheet_url(Marksheet.last)
  end

  test "should show marksheet" do
    get marksheet_url(@marksheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_marksheet_url(@marksheet)
    assert_response :success
  end

  test "should update marksheet" do
    patch marksheet_url(@marksheet), params: { marksheet: { name: @marksheet.name, subject_five: @marksheet.subject_five, subject_four: @marksheet.subject_four, subject_one: @marksheet.subject_one, subject_three: @marksheet.subject_three, subject_two: @marksheet.subject_two } }
    assert_redirected_to marksheet_url(@marksheet)
  end

  test "should destroy marksheet" do
    assert_difference('Marksheet.count', -1) do
      delete marksheet_url(@marksheet)
    end

    assert_redirected_to marksheets_url
  end
end
