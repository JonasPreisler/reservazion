class AddMessengerUserIdToReservation < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :messenger_user_id, :string
    add_column :reservations, :'messenger user id', :string
  end
end
