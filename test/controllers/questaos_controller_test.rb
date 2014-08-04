require 'test_helper'

class QuestaosControllerTest < ActionController::TestCase
  setup do
    @questao = questaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create questao" do
    assert_difference('Questao.count') do
      post :create, questao: { data: @questao.data, pauta_id: @questao.pauta_id, solucao: @questao.solucao, status: @questao.status, titulo: @questao.titulo }
    end

    assert_redirected_to questao_path(assigns(:questao))
  end

  test "should show questao" do
    get :show, id: @questao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @questao
    assert_response :success
  end

  test "should update questao" do
    patch :update, id: @questao, questao: { data: @questao.data, pauta_id: @questao.pauta_id, solucao: @questao.solucao, status: @questao.status, titulo: @questao.titulo }
    assert_redirected_to questao_path(assigns(:questao))
  end

  test "should destroy questao" do
    assert_difference('Questao.count', -1) do
      delete :destroy, id: @questao
    end

    assert_redirected_to questaos_path
  end
end
