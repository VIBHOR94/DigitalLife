class CreatePersonDetails < ActiveRecord::Migration
  def change
    create_table :person_details do |t|
    	t.string :name
    	t.string :sex
    	t.date :date_of_birth
    	t.string :address
    	t.bigint :contact_number
    	t.string :country
      t.timestamps null: false
    end
  end
end
