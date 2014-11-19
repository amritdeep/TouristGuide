require 'test_helper'

class TouristGuideImagesControllerTest < ActionController::TestCase
  setup do
    @tourist_guide_image = tourist_guide_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tourist_guide_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tourist_guide_image" do
    assert_difference('TouristGuideImage.count') do
      post :create, tourist_guide_image: { description_id_id: @tourist_guide_image.description_id_id, image_createdby: @tourist_guide_image.image_createdby, image_name: @tourist_guide_image.image_name }
    end

    assert_redirected_to tourist_guide_image_path(assigns(:tourist_guide_image))
  end

  test "should show tourist_guide_image" do
    get :show, id: @tourist_guide_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tourist_guide_image
    assert_response :success
  end

  test "should update tourist_guide_image" do
    patch :update, id: @tourist_guide_image, tourist_guide_image: { description_id_id: @tourist_guide_image.description_id_id, image_createdby: @tourist_guide_image.image_createdby, image_name: @tourist_guide_image.image_name }
    assert_redirected_to tourist_guide_image_path(assigns(:tourist_guide_image))
  end

  test "should destroy tourist_guide_image" do
    assert_difference('TouristGuideImage.count', -1) do
      delete :destroy, id: @tourist_guide_image
    end

    assert_redirected_to tourist_guide_images_path
  end
end
