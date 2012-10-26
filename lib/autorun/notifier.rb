
module Autorun

  module Notifier
    class Base
      def initialize
      end
    end

    class INotify
    end

    class KQueue
      def initialize
        KQueue::Queue.new
      end
    end
  end

end
