require "application_system_test_case"

class EmbalagensTest < ApplicationSystemTestCase
  setup do
    @embalagem = embalagens(:one)
  end

  test "visiting the index" do
    visit embalagens_url
    assert_selector "h1", text: "Embalagens"
  end

  test "should create embalagem" do
    visit embalagens_url
    click_on "New embalagem"

    fill_in "Nome", with: @embalagem.nome
    click_on "Create Embalagem"

    assert_text "Embalagem was successfully created"
    click_on "Back"
  end

  test "should update Embalagem" do
    visit embalagem_url(@embalagem)
    click_on "Edit this embalagem", match: :first

    fill_in "Nome", with: @embalagem.nome
    click_on "Update Embalagem"

    assert_text "Embalagem was successfully updated"
    click_on "Back"
  end

  test "should destroy Embalagem" do
    visit embalagem_url(@embalagem)
    click_on "Destroy this embalagem", match: :first

    assert_text "Embalagem was successfully destroyed"
  end
end
