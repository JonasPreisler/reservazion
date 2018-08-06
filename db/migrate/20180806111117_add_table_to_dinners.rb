class AddTableToDinners < ActiveRecord::Migration[5.2]
  def change
    add_reference :dinners, :table, foreign_key: true
  end
end
