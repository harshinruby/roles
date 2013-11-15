require 'test_helper'

class WorkhoursControllerTest < ActionController::TestCase
  setup do
    @workhour = workhours(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:workhours)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create workhour" do
    assert_difference('Workhour.count') do
      post :create, workhour: { end_time: @workhour.end_time, start_time: @workhour.start_time, working_day: @workhour.working_day }
    end

    assert_redirected_to workhour_path(assigns(:workhour))
  end

  test "should show workhour" do
    get :show, id: @workhour
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @workhour
    assert_response :success
  end

  test "should update workhour" do
    patch :update, id: @workhour, workhour: { end_time: @workhour.end_time, start_time: @workhour.start_time, working_day: @workhour.working_day }
    assert_redirected_to workhour_path(assigns(:workhour))
  end

  test "should destroy workhour" do
    assert_difference('Workhour.count', -1) do
      delete :destroy, id: @workhour
    end

    assert_redirected_to workhours_path
  end
end
