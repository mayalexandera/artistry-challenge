class AddIndexToArtistTitles < ActiveRecord::Migration[5.2]
  def change
    add_index :artists, :title, unique: true
  end
end

