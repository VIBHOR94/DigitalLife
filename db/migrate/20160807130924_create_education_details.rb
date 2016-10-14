class CreateEducationDetails < ActiveRecord::Migration
  def change
    create_table :education_details do |t|
    	t.string :certificate_type_name
    	t.string :institution_name
    	t.string :board_or_university_name
    	t.integer :percentage_or_cgpa
    	t.integer :year_of_passing
    	t.integer :person_detail_id
      t.timestamps null: false
    end
  end
end