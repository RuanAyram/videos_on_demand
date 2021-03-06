# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Videos', type: :request do
  describe 'GET /videos' do
    it 'works!' do
      get videos_path
      expect(response).to have_http_status(200)
    end
  end
end
