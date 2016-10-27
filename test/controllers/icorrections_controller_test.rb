require 'test_helper'

class IcorrectionsControllerTest < ActionController::TestCase
  setup do
    @icorrection = icorrections(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:icorrections)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create icorrection" do
    assert_difference('Icorrection.count') do
      post :create, icorrection: { User_id: @icorrection.User_id, description: @icorrection.description, title: @icorrection.title }
    end

    assert_redirected_to icorrection_path(assigns(:icorrection))
  end

  test "should show icorrection" do
    get :show, id: @icorrection
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @icorrection
    assert_response :success
  end

  test "should update icorrection" do
    patch :update, id: @icorrection, icorrection: { User_id: @icorrection.User_id, description: @icorrection.description, title: @icorrection.title }
    assert_redirected_to icorrection_path(assigns(:icorrection))
  end

  test "should destroy icorrection" do
    assert_difference('Icorrection.count', -1) do
      delete :destroy, id: @icorrection
    end

    assert_redirected_to icorrections_path
  end
end
