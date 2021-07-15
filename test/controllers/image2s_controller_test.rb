require 'test_helper'

class Image2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @image2 = image2s(:one)
  end

  test "should get index" do
    get image2s_url
    assert_response :success
  end

  test "should get new" do
    get new_image2_url
    assert_response :success
  end

  test "should create image2" do
    assert_difference('Image2.count') do
      post image2s_url, params: { image2: { image: @image2.image } }
    end

    assert_redirected_to image2_url(Image2.last)
  end

  test "should show image2" do
    get image2_url(@image2)
    assert_response :success
  end

  test "should get edit" do
    get edit_image2_url(@image2)
    assert_response :success
  end

  test "should update image2" do
    patch image2_url(@image2), params: { image2: { image: @image2.image } }
    assert_redirected_to image2_url(@image2)
  end

  test "should destroy image2" do
    assert_difference('Image2.count', -1) do
      delete image2_url(@image2)
    end

    assert_redirected_to image2s_url
  end
end
