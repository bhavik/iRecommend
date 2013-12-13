class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, :null => false
      t.string :imageurl
      t.string :author
      
      t.timestamps
    end
  end
end
