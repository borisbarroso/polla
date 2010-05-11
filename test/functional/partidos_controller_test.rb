require 'test_helper'

class PartidosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partido" do
    assert_difference('Partido.count') do
      post :create, :partido => { }
    end

    assert_redirected_to partido_path(assigns(:partido))
  end

  test "should show partido" do
    get :show, :id => partidos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => partidos(:one).to_param
    assert_response :success
  end

  test "should update partido" do
    put :update, :id => partidos(:one).to_param, :partido => { }
    assert_redirected_to partido_path(assigns(:partido))
  end

  test "should destroy partido" do
    assert_difference('Partido.count', -1) do
      delete :destroy, :id => partidos(:one).to_param
    end

    assert_redirected_to partidos_path
  end
end
