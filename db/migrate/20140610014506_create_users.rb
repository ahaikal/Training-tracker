class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :supervisor_name
    	t.date :hire_date
    	t.date :certified_date
    	t.date :employed_date
    	t.string :shift
    	t.belongs_to :group
    	t.integer :education_id

      t.timestamps
    end
  end
end
