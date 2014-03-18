class WeibosController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create, :edit, :update, :destroy, :favorite]
  # GET /weibos
  # GET /weibos.json
  def index
    @weibos = Weibo.includes(:user).order("created_at DESC").paginate(:page => params[:page], :per_page => params[:per_page])
    @upload_token = Qiniu::RS.generate_upload_token :scope => "cmsdemo"

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @weibos }
    end
  end

  # GET /weibos/1
  # GET /weibos/1.json
  def show
    @weibo = Weibo.includes(:comments).find(params[:id])
    @comment = @weibo.comments.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @weibo }
    end
  end

  # GET /weibos/new
  # GET /weibos/new.json
  def new
    @weibo = current_user.weibos.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @weibo }
    end
  end

  # GET /weibos/1/edit
  def edit
    @weibo = Weibo.find(params[:id])
  end

  # POST /weibos
  # POST /weibos.json
  def create
    @weibo = Weibo.new(params[:weibo])

    respond_to do |format|
      if @weibo.save
        format.html { redirect_to @weibo, notice: 'Weibo was successfully created.' }
        format.json { render json: @weibo, status: :created, location: @weibo }
      else
        format.html { render action: "new" }
        format.json { render json: @weibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /weibos/1
  # PUT /weibos/1.json
  def update
    @weibo = Weibo.find(params[:id])

    respond_to do |format|
      if @weibo.update_attributes(params[:weibo])
        format.html { redirect_to @weibo, notice: 'Weibo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @weibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weibos/1
  # DELETE /weibos/1.json
  def destroy
    @weibo = Weibo.find(params[:id])
    @weibo.destroy

    respond_to do |format|
      format.html { redirect_to weibos_url }
      format.json { head :no_content }
    end
  end

  def favorite
    @weibo = Weibo.find(params[:id])
    @weibo.favorite += 1
    respond_to do |format|
      if @weibo.save
        format.js { render :layout => false }
      else

      end
    end
  end
end
