require 'test_helper'

class AdmissionControllerTest < ActionController::TestCase
  test "should get fees" do
    get :fees
    assert_response :success
  end

end
