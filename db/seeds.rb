# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '#### USERS:'
puts '##### FIXED USER'
fixed_user = User.create!(email: 'fixed_user@email.com', password: '123456789')

puts '##### 20 USERS'
user_count = 1
20.times do
  user = User.new(
    email: "user_#{user_count}@email.com",
    password: '123456789'
  )
  user_count += 1

  user.save!
end

puts '#### VIDEOS:'
url_array = ['https://content.jwplatform.com/manifests/yp34SRmf.m3u8', 'https://cdn.jwplayer.com/manifests/RltV8MtT.m3u8']

puts '##### FIXED VIDEO'
fixed_video_I = Video.create!(name: 'Vídeo fixado I', url: url_array.sample, user: fixed_user)
fixed_video_II = Video.create!(name: 'Vídeo fixado II', url: url_array.sample, user: fixed_user)

puts '##### 20 VIDEOS'
video_count = 1
20.times do
  user_id = User.all.sample
  video = Video.new(
    name: "Este é nosso video ##{video_count}",
    url: url_array.sample,
    user: user_id
  )
  video_count += 1

  video.save!
end

puts '#### VIEWS'
Video.all.each do |video|
  view = View.create!(view_count: rand(0..15), video: video)
end
