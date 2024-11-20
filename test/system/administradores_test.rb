require "application_system_test_case"

class AdministradoresTest < ApplicationSystemTestCase
  setup do
    @administrador = administradores(:one)
  end

  test "visiting the index" do
    visit administradores_url
    assert_selector "h1", text: "Administradores"
  end

  test "should create administrador" do
    visit administradores_url
    click_on "New administrador"

    fill_in "Bairro", with: @administrador.bairro
    fill_in "Celular1", with: @administrador.celular1
    fill_in "Celular2", with: @administrador.celular2
    fill_in "Cidade", with: @administrador.cidade
    fill_in "Complemento", with: @administrador.complemento
    fill_in "Confirmar senha", with: @administrador.confirmar_senha
    fill_in "Data cadastro", with: @administrador.data_cadastro
    fill_in "Email", with: @administrador.email
    fill_in "Estado", with: @administrador.estado
    fill_in "Identificacao", with: @administrador.identificacao
    fill_in "Nome", with: @administrador.nome
    fill_in "Nome fantasia", with: @administrador.nome_fantasia
    fill_in "Numero", with: @administrador.numero
    fill_in "Razao social", with: @administrador.razao_social
    fill_in "Representante legal", with: @administrador.representante_legal
    fill_in "Rua", with: @administrador.rua
    fill_in "Senha", with: @administrador.senha
    fill_in "Sobrenome", with: @administrador.sobrenome
    fill_in "Telefone fixo", with: @administrador.telefone_fixo
    fill_in "Tipo", with: @administrador.tipo
    click_on "Create Administrador"

    assert_text "Administrador was successfully created"
    click_on "Back"
  end

  test "should update Administrador" do
    visit administrador_url(@administrador)
    click_on "Edit this administrador", match: :first

    fill_in "Bairro", with: @administrador.bairro
    fill_in "Celular1", with: @administrador.celular1
    fill_in "Celular2", with: @administrador.celular2
    fill_in "Cidade", with: @administrador.cidade
    fill_in "Complemento", with: @administrador.complemento
    fill_in "Confirmar senha", with: @administrador.confirmar_senha
    fill_in "Data cadastro", with: @administrador.data_cadastro
    fill_in "Email", with: @administrador.email
    fill_in "Estado", with: @administrador.estado
    fill_in "Identificacao", with: @administrador.identificacao
    fill_in "Nome", with: @administrador.nome
    fill_in "Nome fantasia", with: @administrador.nome_fantasia
    fill_in "Numero", with: @administrador.numero
    fill_in "Razao social", with: @administrador.razao_social
    fill_in "Representante legal", with: @administrador.representante_legal
    fill_in "Rua", with: @administrador.rua
    fill_in "Senha", with: @administrador.senha
    fill_in "Sobrenome", with: @administrador.sobrenome
    fill_in "Telefone fixo", with: @administrador.telefone_fixo
    fill_in "Tipo", with: @administrador.tipo
    click_on "Update Administrador"

    assert_text "Administrador was successfully updated"
    click_on "Back"
  end

  test "should destroy Administrador" do
    visit administrador_url(@administrador)
    click_on "Destroy this administrador", match: :first

    assert_text "Administrador was successfully destroyed"
  end
end
