class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :image_uid, :image_name
      t.timestamps
    end
  end
end
