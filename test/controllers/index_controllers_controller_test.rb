require "test_helper"

class IndexControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @index_controller = index_controllers(:one)
  end

  test "should get index" do
    get index_controllers_url
    assert_response :success
  end

  test "should get new" do
    get new_index_controller_url
    assert_response :success
  end

  test "should create index_controller" do
    assert_difference('IndexController.count') do
      post index_controllers_url, params: { index_controller: {  } }
    end

    assert_redirected_to index_controller_url(IndexController.last)
  end

  test "should show index_controller" do
    get index_controller_url(@index_controller)
    assert_response :success
  end

  test "should get edit" do
    get edit_index_controller_url(@index_controller)
    assert_response :success
  end

  test "should update index_controller" do
    patch index_controller_url(@index_controller), params: { index_controller: {  } }
    assert_redirected_to index_controller_url(@index_controller)
  end

  test "should destroy index_controller" do
    assert_difference('IndexController.count', -1) do
      delete index_controller_url(@index_controller)
    end

    assert_redirected_to index_controllers_url
  end
end
