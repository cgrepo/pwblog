require 'test_helper'

class SubTargetsControllerTest < ActionController::TestCase
  setup do
    @sub_target = sub_targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sub_targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sub_target" do
    assert_difference('SubTarget.count') do
      post :create, sub_target: { name: @sub_target.name }
    end

    assert_redirected_to sub_target_path(assigns(:sub_target))
  end

  test "should show sub_target" do
    get :show, id: @sub_target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sub_target
    assert_response :success
  end

  test "should update sub_target" do
    patch :update, id: @sub_target, sub_target: { name: @sub_target.name }
    assert_redirected_to sub_target_path(assigns(:sub_target))
  end

  test "should destroy sub_target" do
    assert_difference('SubTarget.count', -1) do
      delete :destroy, id: @sub_target
    end

    assert_redirected_to sub_targets_path
  end
end
