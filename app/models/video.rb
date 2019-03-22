# frozen_string_literal: true

class Video < ApplicationRecord
  ##### RELATIONSHIPS
  has_many :views, dependent: :destroy
  belongs_to :user, counter_cache: true

  ##### VALIDATIONS
  validates :name, presence: true
  validates :url, presence: true
  validate :video_format

  def video_format
    if url.split('.').last != 'm3u8'
      errors.add(:url, 'The correct format is .m3u8')
    end
  end
end
