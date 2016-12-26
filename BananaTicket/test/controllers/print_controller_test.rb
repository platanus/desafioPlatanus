require 'test_helper'

class PrintControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get print_url
    assert_response :success
  end

  test "when show details" do
    get print_details_url(Event.first.id)
    assert_response :success
  end

end
