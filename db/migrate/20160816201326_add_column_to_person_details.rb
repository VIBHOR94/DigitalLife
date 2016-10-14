class AddColumnToPersonDetails < ActiveRecord::Migration
  def change
  	add_column :person_details,:profilepic,:string
  end
end
