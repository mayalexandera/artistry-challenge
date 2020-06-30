# == Schema Information
#
# Table name: instruments
#
#  id             :integer          not null, primary key
#  name           :string
#  classification :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Instrument < ApplicationRecord
  has_many :artist_instruments
  has_many :artists, through: :instruments

  validates_presence_of :name, uniqueness: true
   validates_presence_of :classification, null: false
end
