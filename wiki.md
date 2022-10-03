- users can vote on an option for a given poll
- use existing route and controller (`RespondsController`) for voting

A. Controllers
    - `RespondsController`
        **1.** add a vote to a particular option **Done**
            - get total vote count per option[:id] from db
            - user clicks option
            - add 1 to total vote count in db onClick
                - possible solve: option.increment!(:vote_count, 1)
                    - option.increment_counter(:vote_count, 1) << better perf
                - put in show method of controller
                - https://stackoverflow.com/questions/36005863/ruby-on-rails-increase-integer-in-database
    - *N/R*
        -  use separate controllers for showing the voting options and for incrementing the count
B. Views
    **2.**      update or add views needed to vote on an option **Done**
    **3.**      include the title of the poll **Done**
    **4.**      list each option and its current number of votes **Done**
    **5.**      allow user to "vote" for that option - increasing the vote count **Done**

C. The total number of votes for each option should be visible on
    **6.**      voting **Done**
                - get total vote count per option[:id] from db
    - AND -
    **7.**      visualization pages **Done**
    **8.**      vote count should be displayed next to each option **Done**