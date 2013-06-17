# before_and_after

Before_and_after is simple gem adding some nice utility methods to Time.

  2.minutes.ago.after?(Time.now) # => false
  
  Time.now.before?(2.hours.from_now) # => true
  
  2.minutes.ago.within_last?(2.hours) # => true
  
  2.minutes.from_now.within_coming?(2.hours) # => true

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


