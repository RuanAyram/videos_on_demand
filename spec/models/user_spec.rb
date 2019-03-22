# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'when testing associations' do
    it { should have_many(:videos) }
  end

  context 'when testing validations' do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
  end
end
