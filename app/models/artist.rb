# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  age        :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artist < ApplicationRecord
  has_many :artist_instruments
  has_many :instruments, through: :artist_instruments

  validates_presence_of :name, :age, null: false
  validates_uniqueness_of :title, { message: "That title is already taken!"}
  validates :age, numericality: true


  
end
