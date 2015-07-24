require 'test_helper'

class HappeningsControllerTest < ActionController::TestCase
  setup do
    @happening = happenings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:happenings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create happening" do
    assert_difference('Happening.count') do
      post :create, happening: { date_created: @happening.date_created, description: @happening.description, img_url: @happening.img_url, tag: @happening.tag, title: @happening.title, user_id: @happening.user_id }
    end

    assert_redirected_to happening_path(assigns(:happening))
  end

  test "should show happening" do
    get :show, id: @happening
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @happening
    assert_response :success
  end

  test "should update happening" do
    patch :update, id: @happening, happening: { date_created: @happening.date_created, description: @happening.description, img_url: @happening.img_url, tag: @happening.tag, title: @happening.title, user_id: @happening.user_id }
    assert_redirected_to happening_path(assigns(:happening))
  end

  test "should destroy happening" do
    assert_difference('Happening.count', -1) do
      delete :destroy, id: @happening
    end

    assert_redirected_to happenings_path
  end
end
