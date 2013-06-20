require_relative '../config'

# this is where you should use an ActiveRecord migration to Create Contacts.

class CreateContacts < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :addressbook do |address|
      address.string :first_name
      address.string :last_name
      address.string :company
      address.string :phone
      address.string :email
    end
  end
end
