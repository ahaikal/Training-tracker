class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
    	t.string :name
    	t.belongs_to :department

      t.timestamps
    end
  end
end
