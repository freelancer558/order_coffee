require 'test_helper'

class CoffsControllerTest < ActionController::TestCase
  setup do
    @coff = coffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coff" do
    assert_difference('Coff.count') do
      post :create, coff: { name: @coff.name, price: @coff.price }
    end

    assert_redirected_to coff_path(assigns(:coff))
  end

  test "should show coff" do
    get :show, id: @coff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coff
    assert_response :success
  end

  test "should update coff" do
    put :update, id: @coff, coff: { name: @coff.name, price: @coff.price }
    assert_redirected_to coff_path(assigns(:coff))
  end

  test "should destroy coff" do
    assert_difference('Coff.count', -1) do
      delete :destroy, id: @coff
    end

    assert_redirected_to coffs_path
  end
end
