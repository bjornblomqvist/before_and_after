# before_and_after

befoce_and_after adds the methods (before?, after?, within_last?, within_coming?) to Time

    2.minutes.ago.after?(Time.now) # => false
  
    Time.now.before?(2.hours.from_now) # => true
  
    2.minutes.ago.within_last?(2.hours) # => true
  
    2.minutes.from_now.within_coming?(2.hours) # => true

Example of where it really improves readability

    email.sent_at.within_last?(48.hours)
    
vs

    email.sent_at > Time.now - 48.hours

Credits goes to whoever wrote this. http://www.dzone.com/snippets/and-after-ruby-time-class

## Changelog

**1.0.1**

- Fixed so that we always use the same time NOW

## Copyright

Copyright (c) 2013 - 2014 Björn Blomqvist. See LICENSE.txt for
further details.


