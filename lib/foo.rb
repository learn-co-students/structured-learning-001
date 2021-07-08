require_relative '../config/environment.rb'

class Foo
  def self.run
    bar = Bar.new
    bar.baz
  end
end
