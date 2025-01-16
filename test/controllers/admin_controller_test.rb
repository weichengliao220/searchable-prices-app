require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get import" do
    get admin_import_url
    assert_response :success
  end
end
