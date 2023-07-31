require "application_system_test_case"

class LikisTest < ApplicationSystemTestCase
  setup do
    @liki = likis(:one)
  end

  test "visiting the index" do
    visit likis_url
    assert_selector "h1", text: "Likis"
  end

  test "should create liki" do
    visit likis_url
    click_on "New liki"

    fill_in "Body", with: @liki.body
    fill_in "Title", with: @liki.title
    click_on "Create Liki"

    assert_text "Liki was successfully created"
    click_on "Back"
  end

  test "should update Liki" do
    visit liki_url(@liki)
    click_on "Edit this liki", match: :first

    fill_in "Body", with: @liki.body
    fill_in "Title", with: @liki.title
    click_on "Update Liki"

    assert_text "Liki was successfully updated"
    click_on "Back"
  end

  test "should destroy Liki" do
    visit liki_url(@liki)
    click_on "Destroy this liki", match: :first

    assert_text "Liki was successfully destroyed"
  end
end
