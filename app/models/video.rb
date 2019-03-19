# frozen_string_literal: true

class Video < ApplicationRecord
  ##### RELATIONSHIPS
  belongs_to :user

  ##### VALIDATIONS
  validates :name, :url, presence: true
  validate :video_format

  def video_format
    if url.split('.').last != 'm3u8'
      errors.add(:url, 'The correct format is .m3u8')
    end
  end
end
