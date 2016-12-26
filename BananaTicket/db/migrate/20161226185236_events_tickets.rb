class EventsTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :events_tickets do |t|
      t.references :event
      t.references :ticket, index: true

      t.timestamps
    end
  end
end
