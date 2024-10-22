require "test_helper"

class EmbalagensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @embalagem = embalagens(:one)
  end

  test "should get index" do
    get embalagens_url
    assert_response :success
  end

  test "should get new" do
    get new_embalagem_url
    assert_response :success
  end

  test "should create embalagem" do
    assert_difference("Embalagem.count") do
      post embalagens_url, params: { embalagem: { nome: @embalagem.nome } }
    end

    assert_redirected_to embalagem_url(Embalagem.last)
  end

  test "should show embalagem" do
    get embalagem_url(@embalagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_embalagem_url(@embalagem)
    assert_response :success
  end

  test "should update embalagem" do
    patch embalagem_url(@embalagem), params: { embalagem: { nome: @embalagem.nome } }
    assert_redirected_to embalagem_url(@embalagem)
  end

  test "should destroy embalagem" do
    assert_difference("Embalagem.count", -1) do
      delete embalagem_url(@embalagem)
    end

    assert_redirected_to embalagens_url
  end
end
