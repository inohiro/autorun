require 'rb-inotify'

def main( argv )

  target = File.expand_path( './main.tex')
  makefile = File.expand_path( './Makefile' )

  notifier = INotify::Notifier.new
  notifier.wath( target, :write ) do |event|
    puts "#{target} was wrote."
    system "#{makefile}"
  end

  notifier.run
end

main( ARGV )
