require 'test_helper'

class ChartsControllerTest < ActionDispatch::IntegrationTest
  test "should get Graphics" do
    get charts_Graphics_url
    assert_response :success
  end

end
