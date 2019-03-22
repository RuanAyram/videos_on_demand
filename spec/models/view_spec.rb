# frozen_string_literal: true

require 'rails_helper'

RSpec.describe View, type: :model do
  context 'when testing associations' do
    it { should belong_to(:video) }
  end
end
