class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.string :name
    	t.integer :duration
    	t.date :date
    	t.string :location
    	t.text :description
    	t.boolean :attended
    	t.date :date_completed
      t.belongs_to :user

      t.timestamps
    end
  end
end
