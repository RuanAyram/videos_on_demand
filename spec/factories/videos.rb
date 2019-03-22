# frozen_string_literal: true

FactoryBot.define do
  factory :video do
    name { Faker::Movie.quote }
    url { 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8' }
    user { create(:user) }
  end
end
