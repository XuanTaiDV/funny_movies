require "test_helper"

class SharingYoutubeVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sharing_youtube_video = sharing_youtube_videos(:one)
  end

  test "should get index" do
    get sharing_youtube_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_sharing_youtube_video_url
    assert_response :success
  end

  test "should create sharing_youtube_video" do
    assert_difference("SharingYoutubeVideo.count") do
      post sharing_youtube_videos_url, params: { sharing_youtube_video: {  } }
    end

    assert_redirected_to sharing_youtube_video_url(SharingYoutubeVideo.last)
  end

  test "should show sharing_youtube_video" do
    get sharing_youtube_video_url(@sharing_youtube_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_sharing_youtube_video_url(@sharing_youtube_video)
    assert_response :success
  end

  test "should update sharing_youtube_video" do
    patch sharing_youtube_video_url(@sharing_youtube_video), params: { sharing_youtube_video: {  } }
    assert_redirected_to sharing_youtube_video_url(@sharing_youtube_video)
  end

  test "should destroy sharing_youtube_video" do
    assert_difference("SharingYoutubeVideo.count", -1) do
      delete sharing_youtube_video_url(@sharing_youtube_video)
    end

    assert_redirected_to sharing_youtube_videos_url
  end
end
