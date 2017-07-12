class CreateArtworks < ActiveRecord::Migration[5.1]
  def change
    create_table :artworks do |t|
      t.string :title
      t.string :artist
      t.string :year
      t.string :image
      t.string :category
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
