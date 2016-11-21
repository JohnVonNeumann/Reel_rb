class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price
      t.string :location

      t.timestamps
    end
  end
end
