class AddColumnsToClients < ActiveRecord::Migration
  def change
    add_column :clients, :campus, :string
    add_column :clients, :dorm, :string
    add_column :clients, :room_number, :integer
  end
end
