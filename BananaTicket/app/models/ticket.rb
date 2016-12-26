class Ticket < ApplicationRecord
  belongs_to :event
  validates_uniqueness_of :code

  before_save do
    self.code = SecureRandom.hex
  end
end
