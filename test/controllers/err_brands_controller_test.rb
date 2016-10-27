require 'test_helper'

class ErrBrandsControllerTest < ActionController::TestCase
  setup do
    @err_brand = err_brands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:err_brands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create err_brand" do
    assert_difference('ErrBrand.count') do
      post :create, err_brand: { brand: @err_brand.brand, description: @err_brand.description }
    end

    assert_redirected_to err_brand_path(assigns(:err_brand))
  end

  test "should show err_brand" do
    get :show, id: @err_brand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @err_brand
    assert_response :success
  end

  test "should update err_brand" do
    patch :update, id: @err_brand, err_brand: { brand: @err_brand.brand, description: @err_brand.description }
    assert_redirected_to err_brand_path(assigns(:err_brand))
  end

  test "should destroy err_brand" do
    assert_difference('ErrBrand.count', -1) do
      delete :destroy, id: @err_brand
    end

    assert_redirected_to err_brands_path
  end
end
