class Track < ActiveRecord::Base

  KINDS_OF_TRACKS = %w(bonus regular)

  belongs_to :album

  has_one :band,
    through: :album,
    source: :band

  validates :name, :album_id, :kind, presence: true
  validates :kind, inclusion: KINDS_OF_TRACKS
  
end
