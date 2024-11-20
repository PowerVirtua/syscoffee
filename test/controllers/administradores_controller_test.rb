require "test_helper"

class AdministradoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administrador = administradores(:one)
  end

  test "should get index" do
    get administradores_url
    assert_response :success
  end

  test "should get new" do
    get new_administrador_url
    assert_response :success
  end

  test "should create administrador" do
    assert_difference("Administrador.count") do
      post administradores_url, params: { administrador: { bairro: @administrador.bairro, celular1: @administrador.celular1, celular2: @administrador.celular2, cidade: @administrador.cidade, complemento: @administrador.complemento, confirmar_senha: @administrador.confirmar_senha, data_cadastro: @administrador.data_cadastro, email: @administrador.email, estado: @administrador.estado, identificacao: @administrador.identificacao, nome: @administrador.nome, nome_fantasia: @administrador.nome_fantasia, numero: @administrador.numero, razao_social: @administrador.razao_social, representante_legal: @administrador.representante_legal, rua: @administrador.rua, senha: @administrador.senha, sobrenome: @administrador.sobrenome, telefone_fixo: @administrador.telefone_fixo, tipo: @administrador.tipo } }
    end

    assert_redirected_to administrador_url(Administrador.last)
  end

  test "should show administrador" do
    get administrador_url(@administrador)
    assert_response :success
  end

  test "should get edit" do
    get edit_administrador_url(@administrador)
    assert_response :success
  end

  test "should update administrador" do
    patch administrador_url(@administrador), params: { administrador: { bairro: @administrador.bairro, celular1: @administrador.celular1, celular2: @administrador.celular2, cidade: @administrador.cidade, complemento: @administrador.complemento, confirmar_senha: @administrador.confirmar_senha, data_cadastro: @administrador.data_cadastro, email: @administrador.email, estado: @administrador.estado, identificacao: @administrador.identificacao, nome: @administrador.nome, nome_fantasia: @administrador.nome_fantasia, numero: @administrador.numero, razao_social: @administrador.razao_social, representante_legal: @administrador.representante_legal, rua: @administrador.rua, senha: @administrador.senha, sobrenome: @administrador.sobrenome, telefone_fixo: @administrador.telefone_fixo, tipo: @administrador.tipo } }
    assert_redirected_to administrador_url(@administrador)
  end

  test "should destroy administrador" do
    assert_difference("Administrador.count", -1) do
      delete administrador_url(@administrador)
    end

    assert_redirected_to administradores_url
  end
end
