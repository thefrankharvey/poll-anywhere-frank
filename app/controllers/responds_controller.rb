class RespondsController < ApplicationController
  before_action :set_poll, :set_options

  def update
    @option = Option.find(params[:option_id])
    @option.increment!(:vote_count)
    redirect_to poll_respond_path, notice: "Vote successfully counted."
  end 

  private
    def set_poll
      @poll = Poll.find(params[:poll_id])
    end

    def set_options
      @poll_options = Option.where("poll_id = '#{params[:poll_id]}'")
    end
end