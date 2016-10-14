class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
    	t.integer :person_detail_id
    	t.integer :type_id
    	t.string :recieved_in
    	t.float :amount
    	t.date :date
        t.timestamps null: false
    end
  end
end
