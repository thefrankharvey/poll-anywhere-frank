class RespondsController < ApplicationController
  before_action :set_poll, :set_options

  private
    def set_poll
      @poll = Poll.find(params[:poll_id])
    end

    def set_options
      @poll_options = Option.where(params[:poll_id])
    end
end