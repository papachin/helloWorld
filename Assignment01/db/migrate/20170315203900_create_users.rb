class CreateUsers < ActiveRecord::Migration[5.0]
  def up
    create_table :users do |t|
      t.string :fName, :limit => 20, :null => false
      t.string :sName, :limit => 20, :null => false
      t.string :email, :null => false
      t.string :password, :null => false
      t.boolean :admin, :default => false
      t.boolean :activated, :default => true

      t.timestamps null:false
    end
  end
  
  def down
    drop_table :users
  end
end
