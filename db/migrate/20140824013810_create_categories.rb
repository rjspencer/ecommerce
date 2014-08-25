class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :rank
      t.boolean :active

      t.timestamps
    end
  end
end
