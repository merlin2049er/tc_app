require "application_system_test_case"

class TestresultsTest < ApplicationSystemTestCase
  setup do
    @testresult = testresults(:one)
  end

  test "visiting the index" do
    visit testresults_url
    assert_selector "h1", text: "Testresults"
  end

  test "creating a Testresult" do
    visit testresults_url
    click_on "New Testresult"

    fill_in "Case", with: @testresult.case
    fill_in "Comment", with: @testresult.comment
    check "Pass" if @testresult.pass
    fill_in "Result", with: @testresult.result
    fill_in "Testgroup", with: @testresult.testgroup
    click_on "Create Testresult"

    assert_text "Testresult was successfully created"
    click_on "Back"
  end

  test "updating a Testresult" do
    visit testresults_url
    click_on "Edit", match: :first

    fill_in "Case", with: @testresult.case
    fill_in "Comment", with: @testresult.comment
    check "Pass" if @testresult.pass
    fill_in "Result", with: @testresult.result
    fill_in "Testgroup", with: @testresult.testgroup
    click_on "Update Testresult"

    assert_text "Testresult was successfully updated"
    click_on "Back"
  end

  test "destroying a Testresult" do
    visit testresults_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testresult was successfully destroyed"
  end
end
