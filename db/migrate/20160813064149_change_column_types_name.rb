class ChangeColumnTypesName < ActiveRecord::Migration
  def change
  	change_column :types ,:name ,:string
  end
end
