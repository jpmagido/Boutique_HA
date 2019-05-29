require 'test_helper'

class StaticpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get staticpages_show_url
    assert_response :success
  end

end
