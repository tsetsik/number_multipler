module NumberMultiplier
  class Version
    MAJOR = 0
    MINOR = 1
    PATCH = 0

    class << self
      def to_s
        [MAJOR, MINOR, PATCH].join('.')
      end
    end
  end
end
