class OptionsController < ApplicationController
  before_action :set_poll
  before_action :set_option, except: :create

  def create
    @option = @poll.options.build(option_params)

    if @option.save
      redirect_to edit_poll_path(@poll), notice: "Option was successfully created."
    else
      redirect_to edit_poll_path(@poll, @option), status: :unprocessable_entity
    end
  end

  def update
    if @option.update(option_params)
      redirect_to edit_poll_path(@poll), notice: "Option was successfully updated."
    else
      redirect_to edit_poll_path(@poll, @option), status: :unprocessable_entity
    end
  end

  def destroy
    @option.destroy

    redirect_to edit_poll_path(@poll), notice: "Option was successfully destroyed."
  end

  private
    def set_option
      @option = Option.find(params[:id])
    end

    def set_poll
      @poll = Poll.find(params[:poll_id])
    end

    def option_params
      params.require(:option).permit(:title, :vote_count)
    end
end
