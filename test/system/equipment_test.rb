require "application_system_test_case"

class EquipmentTest < ApplicationSystemTestCase
  setup do
    @equipment = equipment(:one)
  end

  test "visiting the index" do
    visit equipment_url
    assert_selector "h1", text: "Equipment"
  end

  test "should create equipments" do
    visit equipment_url
    click_on "New equipments"

    fill_in "Description", with: @equipment.description
    fill_in "Model", with: @equipment.model
    fill_in "Name", with: @equipment.name
    fill_in "Equipment type", with: @equipment.equipment_type
    click_on "Create Equipment"

    assert_text "Equipment was successfully created"
    click_on "Back"
  end

  test "should update Equipment" do
    visit equipment_url(@equipment)
    click_on "Edit this equipments", match: :first

    fill_in "Description", with: @equipment.description
    fill_in "Model", with: @equipment.model
    fill_in "Name", with: @equipment.name
    fill_in "Equipment type", with: @equipment.equipment_type
    click_on "Update Equipment"

    assert_text "Equipment was successfully updated"
    click_on "Back"
  end

  test "should destroy Equipment" do
    visit equipment_url(@equipment)
    click_on "Destroy this equipments", match: :first

    assert_text "Equipment was successfully destroyed"
  end
end
