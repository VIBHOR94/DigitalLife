class CreateExpenditures < ActiveRecord::Migration
  def change
    create_table :expenditures do |t|
    	t.integer :person_detail_id
    	t.integer :type_id
    	t.string :payment_method
    	t.float :amount
    	t.date :date
      t.timestamps null: false
    end
  end
end