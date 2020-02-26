
=begin
require 'test_helper'

class MebratListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mebrat_list = mebrat_lists(:one)
  end

  test "should get index" do
    get mebrat_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_mebrat_list_url
    assert_response :success
  end

  test "should create mebrat_list" do
    assert_difference('MebratList.count') do
      post mebrat_lists_url, params: { mebrat_list: { description: @mebrat_list.description, title: @mebrat_list.title } }
    end

    assert_redirected_to mebrat_list_url(MebratList.last)
  end

  test "should show mebrat_list" do
    get mebrat_list_url(@mebrat_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_mebrat_list_url(@mebrat_list)
    assert_response :success
  end

  test "should update mebrat_list" do
    patch mebrat_list_url(@mebrat_list), params: { mebrat_list: { description: @mebrat_list.description, title: @mebrat_list.title } }
    assert_redirected_to mebrat_list_url(@mebrat_list)
  end

  test "should destroy mebrat_list" do
    assert_difference('MebratList.count', -1) do
      delete mebrat_list_url(@mebrat_list)
    end

    assert_redirected_to mebrat_lists_url
  end
end
=end

