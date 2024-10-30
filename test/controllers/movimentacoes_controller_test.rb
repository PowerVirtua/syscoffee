require "test_helper"

class MovimentacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimentacao = movimentacoes(:one)
  end

  test "should get index" do
    get movimentacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_movimentacao_url
    assert_response :success
  end

  test "should create movimentacao" do
    assert_difference("Movimentacao.count") do
      post movimentacoes_url, params: { movimentacao: { cliente_id: @movimentacao.cliente_id, codigo_lote: @movimentacao.codigo_lote, data_cadastro: @movimentacao.data_cadastro, embalagem_id: @movimentacao.embalagem_id, localizacao: @movimentacao.localizacao, observacao: @movimentacao.observacao, peso_total: @movimentacao.peso_total, qualidade_id: @movimentacao.qualidade_id, quantidade_sacas: @movimentacao.quantidade_sacas, tipo: @movimentacao.tipo } }
    end

    assert_redirected_to movimentacao_url(Movimentacao.last)
  end

  test "should show movimentacao" do
    get movimentacao_url(@movimentacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimentacao_url(@movimentacao)
    assert_response :success
  end

  test "should update movimentacao" do
    patch movimentacao_url(@movimentacao), params: { movimentacao: { cliente_id: @movimentacao.cliente_id, codigo_lote: @movimentacao.codigo_lote, data_cadastro: @movimentacao.data_cadastro, embalagem_id: @movimentacao.embalagem_id, localizacao: @movimentacao.localizacao, observacao: @movimentacao.observacao, peso_total: @movimentacao.peso_total, qualidade_id: @movimentacao.qualidade_id, quantidade_sacas: @movimentacao.quantidade_sacas, tipo: @movimentacao.tipo } }
    assert_redirected_to movimentacao_url(@movimentacao)
  end

  test "should destroy movimentacao" do
    assert_difference("Movimentacao.count", -1) do
      delete movimentacao_url(@movimentacao)
    end

    assert_redirected_to movimentacoes_url
  end
end
