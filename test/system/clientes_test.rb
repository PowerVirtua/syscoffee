require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "should create cliente" do
    visit clientes_url
    click_on "New cliente"

    fill_in "Bairro", with: @cliente.bairro
    fill_in "Celular1", with: @cliente.celular1
    fill_in "Celular2", with: @cliente.celular2
    fill_in "Cidade", with: @cliente.cidade
    fill_in "Complemento", with: @cliente.complemento
    fill_in "Cpf", with: @cliente.cpf
    fill_in "Data cadastro", with: @cliente.data_cadastro
    fill_in "Email", with: @cliente.email
    fill_in "Estado", with: @cliente.estado
    fill_in "Nome", with: @cliente.nome
    fill_in "Numero", with: @cliente.numero
    fill_in "Observacao", with: @cliente.observacao
    fill_in "Rua", with: @cliente.rua
    fill_in "Sobrenome", with: @cliente.sobrenome
    click_on "Create Cliente"

    assert_text "Cliente was successfully created"
    click_on "Back"
  end

  test "should update Cliente" do
    visit cliente_url(@cliente)
    click_on "Edit this cliente", match: :first

    fill_in "Bairro", with: @cliente.bairro
    fill_in "Celular1", with: @cliente.celular1
    fill_in "Celular2", with: @cliente.celular2
    fill_in "Cidade", with: @cliente.cidade
    fill_in "Complemento", with: @cliente.complemento
    fill_in "Cpf", with: @cliente.cpf
    fill_in "Data cadastro", with: @cliente.data_cadastro
    fill_in "Email", with: @cliente.email
    fill_in "Estado", with: @cliente.estado
    fill_in "Nome", with: @cliente.nome
    fill_in "Numero", with: @cliente.numero
    fill_in "Observacao", with: @cliente.observacao
    fill_in "Rua", with: @cliente.rua
    fill_in "Sobrenome", with: @cliente.sobrenome
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Back"
  end

  test "should destroy Cliente" do
    visit cliente_url(@cliente)
    click_on "Destroy this cliente", match: :first

    assert_text "Cliente was successfully destroyed"
  end
end