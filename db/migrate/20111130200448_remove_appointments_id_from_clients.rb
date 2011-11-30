class RemoveAppointmentsIdFromClients < ActiveRecord::Migration
  def up
    remove_column :clients, :appointment_id
  end

  def down
    add_column :clients, :appointment_id, :integer
  end
end
