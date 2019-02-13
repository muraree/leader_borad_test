## Overview design decisions
- First get the requirement which is to return the summarized result of  leader points.
- To read csv file, I have created a separate module.
- To convert the result and sort it there is another module, which we can use for our requirement extend.
- For calling make a separate class which used to call the result method.
- There is a format output (Temporary method) method to make the output in desire format.


## How to run code and tests
- Use `cd` to reach the test directory (unzip test directory).
- Use ruby 2.3 or above (I prefer ruby2.5.3).
- Run `ruby leader_board.rb 'input_file.csv'` to execute the program.
- To run test need to install rspec gem use `gem install rspec`.
- To run rspec test use `rspec spec/leader_board_spec.rb`.
- See Rspec result in `rspec_result.html`.
