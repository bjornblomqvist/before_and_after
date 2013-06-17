# before_and_after

befoce_and_after adds the methods (before?, after?, within_last?, within_coming?) to Time

  2.minutes.ago.after?(Time.now) # => false
  
  Time.now.before?(2.hours.from_now) # => true
  
  2.minutes.ago.within_last?(2.hours) # => true
  
  2.minutes.from_now.within_coming?(2.hours) # => true
  
Credits goes to whoever wrote this. http://www.dzone.com/snippets/and-after-ruby-time-class

## Contributing to before_and_after
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2013 Björn Blomqvist. See LICENSE.txt for
further details.


