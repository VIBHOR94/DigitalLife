class ChangeColumncgpaEducation < ActiveRecord::Migration
  def change
  	change_column :education_details ,:percentage_or_cgpa ,:float
  end
end
