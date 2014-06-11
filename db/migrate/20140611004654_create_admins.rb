class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :password_digest
    	t.belongs_to :hospital


      t.timestamps
    end
  end
end
