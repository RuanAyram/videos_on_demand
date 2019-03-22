# frozen_string_literal: true

class View < ApplicationRecord
  ##### RELATIONSHIPS
  belongs_to :video

  def self.views_by_video(id)
    v = View.find_by(video_id: id)
    v.nil? ? 0 : v.view_count
  end
end
