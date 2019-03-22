# frozen_string_literal: true

class AddVideosCountToUser < ActiveRecord::Migration[5.2]
  def self.up
    add_column :users, :videos_count, :integer, default: 0, null: false

    User.all.each do |user|
      User.update_counters user.id, videos_count: user.videos.count
    end
  end

  def self.down
    remove_column :users, :videos_count
  end
end
