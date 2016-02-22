require 'test_helper'

class AndroidControllerTest < ActionController::TestCase
  test "should get start" do
    get :start
    assert_response :success
  end

  test "should get stop" do
    get :stop
    assert_response :success
  end

  test "should get clean_up" do
    get :clean_up
    assert_response :success
  end

end
