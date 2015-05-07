require 'test_helper'

class RpgControllerTest < ActionController::TestCase
  test "should get character_type" do
    get :character_type
    assert_response :success
  end

end
