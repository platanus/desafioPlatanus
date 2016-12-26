require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  test "when price is empty" do
    ticket = Ticket.new
    assert_not ticket.save
  end
  test "when is ok" do
    ticket = Ticket.new
    ticket.price = 300.0
    assert ticket.save
  end
end
