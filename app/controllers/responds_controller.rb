class RespondsController < ApplicationController
  before_action :set_poll
# todo focus here
  private
    def set_poll
      @poll = Poll.find(params[:poll_id])
    end
end