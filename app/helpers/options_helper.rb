module OptionsHelper
  # The poll has two options: "Happy" and "Sad". If "Happy" has received three votes
  # and "Sad" as received one vote, this function will return 75% (3/4) for the "Happy"
  # option and 25% (1/4) for the "Sad" option.
  def percentage_of_total_votes(option, poll)
    total_votes = poll.options.sum(&:vote_count)
    return '0%' if total_votes.zero?

    quotient = option.vote_count.to_f / total_votes

    number_to_percentage(
      quotient * 100,
      precision: 1,
      strip_insignificant_zeros: true
    )
  end

  # The poll has two options: "Happy" and "Sad". If "Happy" has received three votes
  # and "Sad" as received one vote, this function will return 100% (3/3) for the "Happy"
  # option and 33.3333% (1/3) for the "Sad" option.
  def percentage_of_max_votes(option, poll)
    max_votes = poll.options.pluck(:vote_count).max
    return '0%' if max_votes.zero?

    quotient = option.vote_count.to_f / max_votes

    number_to_percentage(quotient * 100)
  end
end