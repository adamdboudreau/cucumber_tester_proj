require "application_system_test_case"

class TestUsersTest < ApplicationSystemTestCase
  setup do
    @test_user = test_users(:one)
  end

  test "visiting the index" do
    visit test_users_url
    assert_selector "h1", text: "Test Users"
  end

  test "creating a Test user" do
    visit test_users_url
    click_on "New Test User"

    fill_in "Desc", with: @test_user.desc
    fill_in "Email", with: @test_user.email
    fill_in "Guid", with: @test_user.guid
    fill_in "Status", with: @test_user.status
    click_on "Create Test user"

    assert_text "Test user was successfully created"
    click_on "Back"
  end

  test "updating a Test user" do
    visit test_users_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @test_user.desc
    fill_in "Email", with: @test_user.email
    fill_in "Guid", with: @test_user.guid
    fill_in "Status", with: @test_user.status
    click_on "Update Test user"

    assert_text "Test user was successfully updated"
    click_on "Back"
  end

  test "destroying a Test user" do
    visit test_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test user was successfully destroyed"
  end
end
