require "test_helper"

class DogControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get dog_controller_url
    assert_response :success
  end
end
