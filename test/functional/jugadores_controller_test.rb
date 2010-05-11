require 'test_helper'

class JugadoresControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jugadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jugador" do
    assert_difference('Jugador.count') do
      post :create, :jugador => { }
    end

    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should show jugador" do
    get :show, :id => jugadores(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => jugadores(:one).to_param
    assert_response :success
  end

  test "should update jugador" do
    put :update, :id => jugadores(:one).to_param, :jugador => { }
    assert_redirected_to jugador_path(assigns(:jugador))
  end

  test "should destroy jugador" do
    assert_difference('Jugador.count', -1) do
      delete :destroy, :id => jugadores(:one).to_param
    end

    assert_redirected_to jugadores_path
  end
end
