require 'test_helper'

class GedControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
