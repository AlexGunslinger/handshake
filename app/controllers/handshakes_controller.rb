class HandshakesController < ApplicationController
  def index
    @handshake = Handshake.includes(:videos)
  end

  def new
  end

  def edit
  end

  def show
  end
end
