class RenameTablePeopleToClients < ActiveRecord::Migration
  def change
    rename_table :people, :clients
  end
end
