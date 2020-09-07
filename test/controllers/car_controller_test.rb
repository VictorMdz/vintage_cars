require 'test_helper'

class CarControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get car_index_url
    assert_response :success
  end

  test "should get new" do
    get car_new_url
    assert_response :success
  end

end
