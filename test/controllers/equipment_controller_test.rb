require "test_helper"

class EquipmentControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipment = equipment(:one)
  end

  test "should get index" do
    get equipment_index_url
    assert_response :success
  end

  test "should get new" do
    get new_equipment_url
    assert_response :success
  end

  test "should create equipments" do
    assert_difference("Equipment.count") do
      post equipment_index_url, params: {
        equipment: {
          description: @equipment.description,
          model: @equipment.model,
          name: @equipment.name,
          equipment_type: @equipment.equipment_type }
      }
    end

    assert_redirected_to equipment_url(Equipment.last)
  end

  test "should show equipments" do
    get equipment_url(@equipment)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipment_url(@equipment)
    assert_response :success
  end

  test "should update equipments" do
    patch equipment_url(@equipment), params: {
      equipment: {
        description: @equipment.description,
        model: @equipment.model,
        name: @equipment.name,
        equipment_type: @equipment.equipment_type
    } }
    assert_redirected_to equipment_url(@equipment)
  end

  test "should destroy equipments" do
    assert_difference("Equipment.count", -1) do
      delete equipment_url(@equipment)
    end

    assert_redirected_to equipment_index_url
  end
end
