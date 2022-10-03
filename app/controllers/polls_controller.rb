class PollsController < ApplicationController
  before_action :set_poll, except: [ :index, :create ]

  def index
    @polls = Poll.all.order(id: :desc)
  end

  def edit
  end

  def create
    @poll = Poll.new(poll_params)

    if @poll.save
      redirect_to edit_poll_path(@poll), notice: "Poll was successfully created."
    else
      redirect_to polls_path(@poll), status: :unprocessable_entity
    end
  end

  def update
    if @poll.update(poll_params)
      redirect_to edit_poll_path(@poll), notice: "Poll was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @poll.destroy

    redirect_to polls_url, notice: "Poll was successfully destroyed."
  end

  private
    def set_poll
      @poll = Poll.find(params[:id])
    end

    def poll_params
      params.require(:poll).permit(:title)
    end
end
