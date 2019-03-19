# frozen_string_literal: true

class Video < ApplicationRecord
  ##### RELATIONSHIPS
  belongs_to :user

  ##### VALIDATIONS
  validates :name, :url, presence: true
  validate :type_of_video

  def type_of_video
    if url.split('.').last != 'm3u8'
      errors.add(:url, 'Type of video is not valid')
    end
  end
end
