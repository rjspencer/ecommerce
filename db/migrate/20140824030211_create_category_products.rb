class CreateCategoryProducts < ActiveRecord::Migration
  def change
    create_table :category_products do |t|
      t.belongs_to :product
      t.belongs_to :category
      
      t.timestamps
    end
  end
end
