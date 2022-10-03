# Poll Anywhere

Poll Anywhere wants to engage audiences through live online polling. The Poll Anywhere application enables presenters to create multiple-choice polls with any number of options. Unfortuntely, the audience experience needs some work. Extra unfortuntely, Poll Anywhere only has an hour of budget left to pay for developer time.
## Goals

The primary goal is to complete a page for the audience to vote on their favorite option for a given poll. There is an existing route and controller (`RespondsController`) for voting but the functionality is incomplete.

1. Complete the `RespondsController` actions to allow someone in the audience to add a vote to a particular option.
1. Update or add any views needed to add a vote to an option.
    - The view should include the title of the poll.
    - The view should list each option and the current number of votes it has received.
    - The view should allow an audience member to "vote" for that option, increasing the vote count.
    - It is fine if you want to use separate controllers for showing the voting options and for incrementing the count, but this isn't required.
1. The total number of votes for each option should be visible on the voting _and_ visualization pages. The vote count should be displayed next to each option.

Please stick to the one-hour limit. Take a pragmatic approach. It's fine if you don't accomplish everything, and we can talk about where and why you cut any corners.

## Development environment

You will need Ruby 3.0.2 and SQLite. If you need to take some time to make sure you have any of these dependencies working before for "start the clock" you are welcome to do so.

In the emailed instructions, you were provided a Git respository for this exercise. Please feel free to push as many commits as you like to that repository.

### Install the dependencies

    bundle install

### Run database migrations

    bin/rails db:migrate

### Start the server locally

    ./bin/dev

Open `http://localhost:3000` in your favorite browser.

### Run tests

    ./bin/rails test

### Open a console

    ./bin/rails console

## Submitting the sample

Once you are complete, just tarball or zip this repository into a file called `completed_sample.tar.gz` or `completed_sample.zip`. Upload that file to the Google Drive that we shared for this exercise.
