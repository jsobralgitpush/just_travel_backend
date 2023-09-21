class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.float :price
      t.integer :stars

      t.timestamps
    end
  end
end
