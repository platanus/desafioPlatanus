require 'test_helper'

class ValidationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get validation_url(Ticket.first.code)
    assert_response :success
  end

end
