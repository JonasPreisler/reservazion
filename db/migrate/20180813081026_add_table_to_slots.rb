class AddTableToSlots < ActiveRecord::Migration[5.2]
  def change
    add_reference :slots, :table, foreign_key: true
  end
end
