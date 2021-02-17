require 'test_helper'

class HubControllerTest < ActionDispatch::IntegrationTest
  test "should get HomePage" do
    get hub_HomePage_url
    assert_response :success
  end

  test "should get AddPage" do
    get hub_AddPage_url
    assert_response :success
  end

  test "should get UpdatePage" do
    get hub_UpdatePage_url
    assert_response :success
  end

  test "should get DetailsPage" do
    get hub_DetailsPage_url
    assert_response :success
  end

  test "should get DeletePage" do
    get hub_DeletePage_url
    assert_response :success
  end

end
