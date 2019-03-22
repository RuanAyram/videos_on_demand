# frozen_string_literal: true

require 'rails_helper'

RSpec.describe VideosController, type: :controller do
  # This should return the minimal set of attributes required to create a valid
  # Video. As you add validations to Video, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VideosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Video.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      video = Video.create! valid_attributes
      get :show, params: { id: video.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      video = Video.create! valid_attributes
      get :edit, params: { id: video.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Video' do
        expect do
          post :create, params: { video: valid_attributes }, session: valid_session
        end.to change(Video, :count).by(1)
      end

      it 'redirects to the created video' do
        post :create, params: { video: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Video.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { video: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested video' do
        video = Video.create! valid_attributes
        put :update, params: { id: video.to_param, video: new_attributes }, session: valid_session
        video.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the video' do
        video = Video.create! valid_attributes
        put :update, params: { id: video.to_param, video: valid_attributes }, session: valid_session
        expect(response).to redirect_to(video)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        video = Video.create! valid_attributes
        put :update, params: { id: video.to_param, video: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested video' do
      video = Video.create! valid_attributes
      expect do
        delete :destroy, params: { id: video.to_param }, session: valid_session
      end.to change(Video, :count).by(-1)
    end

    it 'redirects to the videos list' do
      video = Video.create! valid_attributes
      delete :destroy, params: { id: video.to_param }, session: valid_session
      expect(response).to redirect_to(videos_url)
    end
  end
end
