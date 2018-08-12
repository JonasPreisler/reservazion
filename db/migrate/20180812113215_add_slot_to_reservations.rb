class AddSlotToReservations < ActiveRecord::Migration[5.2]
  def change
    add_reference :reservations, :slot, foreign_key: true
  end
end
