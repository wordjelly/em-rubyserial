## 0.0.2 (2015-09-17)

Bugfixes:

  - Fix "Errno::EBADF - Bad file descriptor" error under jruby that would occur after some time of working

## 0.0.3(2020-09-01)

Bugfixes:

  - Fix "Cannot delete while iterating rbtree" error, by removing the require 'em/pure_ruby' and replacing it with require 'eventmachine'