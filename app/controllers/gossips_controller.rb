class GossipsController < ApplicationController

  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.save
    redirect_to @gossip
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  private
    def gossip_params
      params.require(:gossip).permit(:anonymous_author, :content)
    end

end
