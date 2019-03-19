# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'videos/new', type: :view do
  before(:each) do
    assign(:video, Video.new(
                     name: 'MyString',
                     url: 'MyString',
                     user: nil
                   ))
  end

  it 'renders new video form' do
    render

    assert_select 'form[action=?][method=?]', videos_path, 'post' do
      assert_select 'input[name=?]', 'video[name]'

      assert_select 'input[name=?]', 'video[url]'

      assert_select 'input[name=?]', 'video[user_id]'
    end
  end
end
