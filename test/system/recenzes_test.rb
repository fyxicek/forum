require "application_system_test_case"

class RecenzesTest < ApplicationSystemTestCase
  setup do
    @recenze = recenzes(:one)
  end

  test "visiting the index" do
    visit recenzes_url
    assert_selector "h1", text: "Recenzes"
  end

  test "should create recenze" do
    visit recenzes_url
    click_on "New recenze"

    fill_in "Description", with: @recenze.description
    fill_in "Hodnoceni", with: @recenze.hodnoceni
    fill_in "Name", with: @recenze.name
    click_on "Create Recenze"

    assert_text "Recenze was successfully created"
    click_on "Back"
  end

  test "should update Recenze" do
    visit recenze_url(@recenze)
    click_on "Edit this recenze", match: :first

    fill_in "Description", with: @recenze.description
    fill_in "Hodnoceni", with: @recenze.hodnoceni
    fill_in "Name", with: @recenze.name
    click_on "Update Recenze"

    assert_text "Recenze was successfully updated"
    click_on "Back"
  end

  test "should destroy Recenze" do
    visit recenze_url(@recenze)
    click_on "Destroy this recenze", match: :first

    assert_text "Recenze was successfully destroyed"
  end
end
