class AddAppointmentIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :appointment_id, :integer
  end
end
