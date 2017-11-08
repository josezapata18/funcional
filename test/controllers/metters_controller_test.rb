require 'test_helper'

class MettersControllerTest < ActionController::TestCase
  setup do
    @metter = metters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:metters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create metter" do
    assert_difference('Metter.count') do
      post :create, metter: { name: @metter.name, program_id: @metter.program_id }
    end

    assert_redirected_to metter_path(assigns(:metter))
  end

  test "should show metter" do
    get :show, id: @metter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @metter
    assert_response :success
  end

  test "should update metter" do
    patch :update, id: @metter, metter: { name: @metter.name, program_id: @metter.program_id }
    assert_redirected_to metter_path(assigns(:metter))
  end

  test "should destroy metter" do
    assert_difference('Metter.count', -1) do
      delete :destroy, id: @metter
    end

    assert_redirected_to metters_path
  end
end
