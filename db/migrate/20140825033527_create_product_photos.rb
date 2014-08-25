class CreateProductPhotos < ActiveRecord::Migration
  def change
    create_table :product_photos do |t|
      t.belongs_to :product
      t.belongs_to :photo
      t.timestamps
    end
  end
end
