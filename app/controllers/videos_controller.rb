class VideosController < ApplicationController
  before_filter :authenticate_user!, :except => [:index, :show, :mostview, :lessview]
  before_action :set_video, only: [:show, :edit, :update, :destroy]

  # GET /videos
  # GET /videos.json
  def index
    if params[:search]
      @videos = Video.search(params[:search]).order("created_at DESC").paginate(:page => params[:page], :per_page => 6)
    else
      @videos = Video.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 6)
    end
  end

  # GET /videos/mostview
  def mostview
    @videos = Video.all.order('view DESC').paginate(:page => params[:page], :per_page => 6)
  end

  # GET /videos/lessview
  def lessview
    @videos = Video.all.order('view ASC').paginate(:page => params[:page], :per_page => 6)
  end

  # GET /videos/myvideos
  def myvideos
    @videos = current_user.videos.paginate(:page => params[:page], :per_page => 6)
  end

  # GET /videos/1
  # GET /videos/1.json
  def show
    @videos = Video.find(params[:id]).increment!(:view)
  end

  # GET /videos/new
  def new
    @video = current_user.videos.build
  end

  # GET /videos/1/edit
  def edit
  end

  # POST /videos
  # POST /videos.json
  def create
    @video = current_user.videos.build(video_params)

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Votre vidéo a bien été créée' }
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
        format.html { redirect_to @video, notice: 'Votre vidéo a bien été mise à jour' }
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
      format.html { redirect_to videos_url, notice: 'Votre vidéo a bien été supprimée' }
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
      params.require(:video).permit(:name, :description, :user_id, :video, :search)
    end
end


# Custom
def resource_name
  :user
end

def resource
  @resource ||= User.new
end

def devise_mapping
  @devise_mapping ||= Devise.mappings[:user]
end