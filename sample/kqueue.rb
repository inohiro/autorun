require 'rb-kqueue'

def main( argv )

  target = File.expand_path( './main.tex')
  makefile = File.expand_path( './Makefile' )

  notifier = KQueue::Queue.new
  notifier.wath( target, :write ) do |event|
    puts "#{target} was wrote."
    system "#{makefile}"
  end

  notifier.run
end

main( ARGV )
