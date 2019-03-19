# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'videos/show', type: :view do
  before(:each) do
    @video = assign(:video, Video.create!(
                              name: 'Name',
                              url: 'Url',
                              user: nil
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(//)
  end
end
