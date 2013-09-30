class PassagesController < ApplicationController

  def show
    @passage = Passage.find(params[:id])

  end

  def create
    @passage = Passage.new
    @passage.title      = params[:passage][:title]
    @passage.newsrecord = params[:passage][:newsrecord]
    @passage.content    = params[:passage][:content]
    @passage.images     = params[:passage][:images]
    @passage.postUrl    = params[:passage][:postUrl]
    @passage.psgType    = params[:passage][:psgType]
    @passage.save

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @passage }
    end
  end

  def new
    @passage = Passage.new
  end

end
