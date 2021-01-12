class TarsController < ApplicationController
  def index
  end

  def show
    render plain: "Hello!", status: 200
  end
end
