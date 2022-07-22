require "application_system_test_case"

class TestgroupsTest < ApplicationSystemTestCase
  setup do
    @testgroup = testgroups(:one)
  end

  test "visiting the index" do
    visit testgroups_url
    assert_selector "h1", text: "Testgroups"
  end

  test "creating a Testgroup" do
    visit testgroups_url
    click_on "New Testgroup"

    fill_in "Description", with: @testgroup.description
    fill_in "Testcase", with: @testgroup.testcase
    fill_in "Title", with: @testgroup.title
    click_on "Create Testgroup"

    assert_text "Testgroup was successfully created"
    click_on "Back"
  end

  test "updating a Testgroup" do
    visit testgroups_url
    click_on "Edit", match: :first

    fill_in "Description", with: @testgroup.description
    fill_in "Testcase", with: @testgroup.testcase
    fill_in "Title", with: @testgroup.title
    click_on "Update Testgroup"

    assert_text "Testgroup was successfully updated"
    click_on "Back"
  end

  test "destroying a Testgroup" do
    visit testgroups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testgroup was successfully destroyed"
  end
end
