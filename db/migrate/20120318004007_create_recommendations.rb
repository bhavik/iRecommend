class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :name, :limit => 100
      t.string :image_url
      t.string :thumbnail_url
      t.integer :cat_id, :null => false
      t.string :info, :limit => 100

      t.timestamps
    end
  end
end
