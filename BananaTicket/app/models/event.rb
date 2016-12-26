class Event < ApplicationRecord
  has_and_belongs_to_many :artists

  has_many :tickets

  validates_presence_of :name
  validates_presence_of :starts_at
  validate :validate_starts_at

  def validate_starts_at
     starts_at != nil && starts_at > DateTime.now ? true : false
  end

  def generate_tickets(amount, price)
    amount.times do
      ticket = Ticket.create(price: price)
      ticket.event = self
      ticket.save
    end
  end
end
