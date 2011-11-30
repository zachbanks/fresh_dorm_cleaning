class AddClientsIdToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :client_id, :integer
  end
end
