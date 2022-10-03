require "test_helper"

class OptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @option = options(:one)
  end

  test "should create option" do
    assert_difference("Option.count") do
      post poll_options_url(@option.poll), params: { option: { poll_id: @option.poll_id, title: @option.title, vote_count: @option.vote_count } }
    end

    assert_redirected_to edit_poll_url(Option.last.poll)
  end

  test "should update option" do
    assert_changes "@option.reload.title" do
      patch poll_option_url(@option.poll, @option), params: { option: { poll_id: @option.poll_id, title: "new title", vote_count: @option.vote_count } }
    end

    assert_redirected_to edit_poll_url(Option.last.poll)
  end

  test "should destroy option" do
    assert_difference("Option.count", -1) do
      delete poll_option_url(@option.poll, @option)
    end

    assert_redirected_to edit_poll_url(@option.poll)
  end
end
