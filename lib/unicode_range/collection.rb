class UnicodeRange
  class Collection
    def initialize(decimals)
      @decimals = decimals
    end

    def to_a
      decimals
    end

    def to_s
      decimals.pack("U*")
    end

    def inspect
      decimals
    end

    private

    attr_reader :decimals
  end
end
