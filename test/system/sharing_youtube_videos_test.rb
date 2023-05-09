require "application_system_test_case"

class SharingYoutubeVideosTest < ApplicationSystemTestCase
  setup do
    @sharing_youtube_video = sharing_youtube_videos(:one)
  end

  test "visiting the index" do
    visit sharing_youtube_videos_url
    assert_selector "h1", text: "Sharing youtube videos"
  end

  test "should create sharing youtube video" do
    visit sharing_youtube_videos_url
    click_on "New sharing youtube video"

    click_on "Create Sharing youtube video"

    assert_text "Sharing youtube video was successfully created"
    click_on "Back"
  end

  test "should update Sharing youtube video" do
    visit sharing_youtube_video_url(@sharing_youtube_video)
    click_on "Edit this sharing youtube video", match: :first

    click_on "Update Sharing youtube video"

    assert_text "Sharing youtube video was successfully updated"
    click_on "Back"
  end

  test "should destroy Sharing youtube video" do
    visit sharing_youtube_video_url(@sharing_youtube_video)
    click_on "Destroy this sharing youtube video", match: :first

    assert_text "Sharing youtube video was successfully destroyed"
  end
end
