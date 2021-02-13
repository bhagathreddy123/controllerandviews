require 'test_helper'

class DemoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get demo_index_url
    assert_response :success
  end

  test "should get cotact" do
    get demo_cotact_url
    assert_response :success
  end

  test "should get about" do
    get demo_about_url
    assert_response :success
  end

end
