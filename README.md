## Test Driver
Use Capybara to test an external website

### Dependencies
On the master branch, the Gemfile uses capybara-webkit, which is dependent on Qt5. This must be [installed separately] (https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit).

On the For Windows branch, the Gemfile uses poltergeist, which is dependent on Phantom.js. You can use node for that one.

### Installation 
If you have ruby + bundler on your path, you can clone the repo and `bundle install`. From there, run `RSpec <directory or filename>` to execute the tests. 
There is a missing spec/support/constants.rb which I excluded from Git, which needs `URL_UNDER_TEST`, `TEST_USERNAME`, and `TEST_PASSWORD` for logging into a site.


