require 'test_helper'

class QuoteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quote_index_url
    assert_response :success
  end

end
