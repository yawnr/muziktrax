class Album < ActiveRecord::Base

  ALBUM_FORMATS = %w(live studio)

  belongs_to :band

  has_many :tracks, dependent: :destroy

  validates :title, :band_id, :format, presence: true
  validates :format, inclusion: ALBUM_FORMATS


end
