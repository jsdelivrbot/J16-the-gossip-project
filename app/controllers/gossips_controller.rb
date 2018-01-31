class GossipsController < ApplicationController

  def index
  end

  def new
    @gossip = Gossip.new
  end

  def show
    @gossips = Gossip.all
  end

end
