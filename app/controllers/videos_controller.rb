# frozen_string_literal: true

class VideosController < ApplicationController
  load_and_authorize_resource

  before_action :set_video, only: %i[show edit update destroy]

  # GET /videos
  # GET /videos.json
  def index
    @videos = Video.all.page(params[:page])
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @view = View.find_by(video_id: @video.id)
    @all_views = @view.nil? ? 0 : @view.view_count

    if @all_views == 0
      View.create!(view_count: @all_views + 1, video_id: @video.id)
    else
      @view.update(view_count: @all_views + 1)
    end
  end

  # GET /videos/new
  def new
    @video = Video.new
  end

  # GET /videos/1/edit
  def edit; end

  # POST /videos
  # POST /videos.json
  def create
    @video = Video.new(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to root_path, notice: 'Video Created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /videos/1
  # PATCH/PUT /videos/1.json
  def update
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to root_path, notice: 'Video Updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /videos/1
  # DELETE /videos/1.json
  def destroy
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video Destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_video
    @video = Video.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def video_params
    params.require(:video).permit(:name, :url, :user_id)
  end
end
