# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'videos/index', type: :view do
  before(:each) do
    assign(:videos, [
             Video.create!(
               name: 'Name',
               url: 'Url',
               user: nil
             ),
             Video.create!(
               name: 'Name',
               url: 'Url',
               user: nil
             )
           ])
  end

  it 'renders a list of videos' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Url'.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
  end
end
