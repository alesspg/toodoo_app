require 'test_helper'

class ToodooItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toodoo_item = toodoo_items(:one)
  end

  test "should get index" do
    get toodoo_items_url
    assert_response :success
  end

  test "should get new" do
    get new_toodoo_item_url
    assert_response :success
  end

  test "should create toodoo_item" do
    assert_difference('ToodooItem.count') do
      post toodoo_items_url, params: { toodoo_item: { description: @toodoo_item.description } }
    end

    assert_redirected_to toodoo_item_url(ToodooItem.last)
  end

  test "should show toodoo_item" do
    get toodoo_item_url(@toodoo_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_toodoo_item_url(@toodoo_item)
    assert_response :success
  end

  test "should update toodoo_item" do
    patch toodoo_item_url(@toodoo_item), params: { toodoo_item: { description: @toodoo_item.description } }
    assert_redirected_to toodoo_item_url(@toodoo_item)
  end

  test "should destroy toodoo_item" do
    assert_difference('ToodooItem.count', -1) do
      delete toodoo_item_url(@toodoo_item)
    end

    assert_redirected_to toodoo_items_url
  end
end
