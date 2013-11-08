class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  def index
    # @albums = Album.all
    return unless params[:token] == "58e9cceb1f0ac63bb4eecd9a29a3fd612725ac9c"
    @albums = Album.where(user_id: params[:userID]).order("useFlag DESC")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  def getToken
    @token = Qiniu::RS.generate_upload_token :scope => "datescript"

    respond_to do |format|
      format.json { render json: @token }
    end
  end

  # GET /albums/1/edit
  def edit
    @myalbum = Album.find(params[:id])
    @myalbum.useFlag = 2
    @albums = Album.where(user_id: params[:userID], useFlag: 2).limit(1)
    @albums.each do |al|
      al.useFlag = 0
      al.save
    end
    redirect_to :back if @myalbum.save
    # respond_to do |format|
    #   if @myalbum.save
    #     redirect_to :back
    #   else
    #     format.json { render json: @album.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(params[:album])
    respond_to do |format|
      if @album.save
        format.html { redirect_to @album, notice: 'Album was successfully created.' }
        format.json { render json: @album, status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to @album, notice: 'Album was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to albums_url }
      format.json { head :no_content }
    end
  end
end
