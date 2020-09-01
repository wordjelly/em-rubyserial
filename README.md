# Em::Rubyserial

EventMachine serial port functionality that should work on all* ruby flavors (including MRI, jruby; and various operating systems including linux, windows, and apple)

The original gem fails on virtually all versions of EventMachine, due to a weird rbtree errors. I fixed this, by fixing what looks like an erroneous require statement.

## Installation

Add this line to your application's Gemfile:

    gem 'wj-em-rubyserial'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install wj-em-rubyserial

## Usage

    EM.run do
      serial = EventMachine.open_serial('/dev/ttyS2', 9600, 8)
      serial.send_data "foo"

      serial.on_data do |data|
        puts data
      end
    end

## Contributing

1. Fork it ( https://github.com/wordjelly/em-rubyserial/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
