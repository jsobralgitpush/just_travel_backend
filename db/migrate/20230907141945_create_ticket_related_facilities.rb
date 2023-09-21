class CreateTicketRelatedFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :ticket_related_facilities do |t|
      t.references :ticket, null: false, foreign_key: true
      t.references :facility, null: false, foreign_key: true

      t.timestamps
    end
  end
end
