require 'test_helper'

class EventTest < ActiveSupport::TestCase
  test "when name is empty" do
    event = Event.new
    assert_not event.save
  end

  test "when starts_at is empty" do
    event = Event.new
    event.name = 'Festival'
    assert_not event.save
  end

  test "when starts_at is old" do
    event = Event.new
    event.name = 'Festival'
    event.starts_at = DateTime.now - 10.days
    assert_not event.save
  end

  test "when is Ok" do
    event = Event.new
    event.name = 'Festival'
    event.starts_at = DateTime.now + 10.days
    assert event.save
  end

  test "when ticket autogenerate" do
    event = Event.new
    event.name = 'Festival 2'
    event.starts_at = DateTime.now + 10.days
    event.save

    event.generate_tickets(10, 300.0)

    assert_equal 10, event.tickets.count

  end
end
