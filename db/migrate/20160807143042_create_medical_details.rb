class CreateMedicalDetails < ActiveRecord::Migration
  def change
    create_table :medical_details do |t|
    	t.integer :person_detail_id
    	t.string :blood_group
    	t.string :family_doctor_name
    	t.string :family_doctor_number
      t.timestamps null: false
    end
  end
end
