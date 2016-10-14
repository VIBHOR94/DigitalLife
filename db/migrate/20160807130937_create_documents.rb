class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
    	t.integer :person_detail_id
    	t.string :title
    	t.integer :category_id
    	t.string :picture
      t.timestamps null: false
    end
  end
end
