class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :code, index: true
      t.float :price
      t.references :event, index: true
      t.timestamps
    end
  end
end
