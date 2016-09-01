require 'test_helper'

class PharmasControllerTest < ActionController::TestCase
  setup do
    @pharma = pharmas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pharmas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pharma" do
    assert_difference('Pharma.count') do
      post :create, pharma: { hsopitalname: @pharma.hsopitalname, name: @pharma.name }
    end

    assert_redirected_to pharma_path(assigns(:pharma))
  end

  test "should show pharma" do
    get :show, id: @pharma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pharma
    assert_response :success
  end

  test "should update pharma" do
    patch :update, id: @pharma, pharma: { hsopitalname: @pharma.hsopitalname, name: @pharma.name }
    assert_redirected_to pharma_path(assigns(:pharma))
  end

  test "should destroy pharma" do
    assert_difference('Pharma.count', -1) do
      delete :destroy, id: @pharma
    end

    assert_redirected_to pharmas_path
  end
end
