# == Schema Information
#
# Table name: artist_instruments
#
#  id            :integer          not null, primary key
#  artist_id     :integer
#  instrument_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class ArtistInstrument < ApplicationRecord
  belongs_to :artist
  belongs_to :instrument

  validates :instrument_id, uniqueness: { scope: :artist_id, message: "that instrument is already included."}

  
end
