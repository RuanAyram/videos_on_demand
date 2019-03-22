# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Video, type: :model do
  context 'when testing associations' do
    it { should have_many(:views) }
    it { should belong_to(:user) }
  end

  context 'when testing validations' do
    before { allow(subject).to receive(:video_format).and_return(false) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:url) }
  end
end
