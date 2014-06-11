class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
    	t.string :name
    	t.belongs_to :hospital
    	t.belongs_to :admin

      t.timestamps
    end
  end
end
