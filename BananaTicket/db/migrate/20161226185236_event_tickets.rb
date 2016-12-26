class EventTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :event_tickets do |t|
      t.reference :event
      t.reference :ticket, index: true

      t.timestamps
    end
  end
end
