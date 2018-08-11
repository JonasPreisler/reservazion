class AddGuestToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :guest, :integer
  end
end
