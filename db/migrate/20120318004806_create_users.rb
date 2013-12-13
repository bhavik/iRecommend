class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :limit => 20
      t.string :password, :limit => 20
      t.string :first_name, :limit => 50
      t.string :last_name, :limit => 50
      t.string :email, :limit => 100

      t.timestamps
    end
  end
end
