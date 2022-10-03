class VisualizationsController < ApplicationController
  before_action :set_poll
  # todo use this maybe
  def show
  end

  private
    def set_poll
      @poll = Poll.find(params[:poll_id])
    end
end
