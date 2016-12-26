class Ticket < ApplicationRecord
  has_and_belongs_to_many :events
  validates_uniqueness_of :code

  before_save do
    self.code = SecureRandom.hex
  end
end
