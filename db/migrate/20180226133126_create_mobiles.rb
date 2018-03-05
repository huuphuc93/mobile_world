class CreateMobiles < ActiveRecord::Migration[5.1]
  def change
    create_table :mobiles do |t|
      t.string :name
      t.decimal :price, :precision => 8, :scale => 2
      t.string :color
      t.integer :width
      t.integer :height
      t.integer :font_camera
      t.integer :behind_camera
      t.integer :weight
      t.integer :battery
      t.integer :resolution_width
      t.integer :resolution_height
      t.string :description
      t.string :cover_image
      
      t.timestamps
    end
  end
end
