class Ticket < ApplicationRecord
  has_and_belongs_to_many :events

  validates_presence_of :code
  validates_length_of :code, minimum: 32, maximum: 32
  validates_uniqueness_of :code
end
