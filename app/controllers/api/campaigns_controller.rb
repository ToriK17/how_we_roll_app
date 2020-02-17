class Api::CampaignsController < ApplicationController
  def index
    @campaigns = Campaign.all
    render "index.json.jb"
  end

  def create
    @campaign = Campaign.new(
      title: params[:title], 
      details: params[:details]
      )
    if @campaign.save
      render "show.json.jb"
    else
      render json: {errors: @campaign.errors.full_messages}, status: :unprocessable_entity
    end  
  end

  def show
    @campaign = Campaign.find(params[:id])
    render "show.json.jb"
  end

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.title = params[:title] || @campaign.title 
    @campaign.details = params[:details] || @campaign.details 
    @campaign.save
    render "show.json.jb"
  end

  def destroy
    campaign = Campaign.find(params[:id])
    campaign.destroy
    render json: {message: "campaign destroyed."}
  end
end
