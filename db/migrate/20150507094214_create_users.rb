class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "username", :limit => 20
      t.string "password", :limit => 25
      t.string "email"	
      t.timestamps
    end
  end
end
