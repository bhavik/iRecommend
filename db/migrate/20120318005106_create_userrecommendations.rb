class CreateUserrecommendations < ActiveRecord::Migration
  def change
    create_table :userrecommendations do |t|
      t.integer :rec_id
      t.integer :user_id
      t.timestamps
    end
  end
end
