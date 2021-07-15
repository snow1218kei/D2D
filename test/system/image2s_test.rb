require "application_system_test_case"

class Image2sTest < ApplicationSystemTestCase
  setup do
    @image2 = image2s(:one)
  end

  test "visiting the index" do
    visit image2s_url
    assert_selector "h1", text: "Image2s"
  end

  test "creating a Image2" do
    visit image2s_url
    click_on "New Image2"

    fill_in "Image", with: @image2.image
    click_on "Create Image2"

    assert_text "Image2 was successfully created"
    click_on "Back"
  end

  test "updating a Image2" do
    visit image2s_url
    click_on "Edit", match: :first

    fill_in "Image", with: @image2.image
    click_on "Update Image2"

    assert_text "Image2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Image2" do
    visit image2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Image2 was successfully destroyed"
  end
end
