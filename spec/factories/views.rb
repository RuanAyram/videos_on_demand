# frozen_string_literal: true

FactoryBot.define do
  factory :view do
    count { 1 }
    video { create(:video) }
  end
end
