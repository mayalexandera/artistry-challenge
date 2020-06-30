class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.integer :age, numericality: true
      t.string :title, uniqueness: true

      t.timestamps
    end
  end
end
