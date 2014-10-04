class Artist < ActiveRecord::Base
  has_many :tracks, dependent: :destroy

  # def as_json(*args)
  #   super(*args).merge({ tracks: tracks.as_json })
  # end
end
