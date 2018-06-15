require "unicode_range/version"
require "unicode_range/collection"

class UnicodeRange
  def initialize(from:, to:)
    @from = from.to_i(16)
    @to = to.to_i(16)
  end

  def expand(except: [])
    Collection.new codepoints(except)
  end

  private

  attr_reader :from, :to

  def codepoints(except)
    [*from..to].select do |codepoint|
      not except.any? { |exclude| casecmp(to_hex(codepoint), exclude) }
    end
  end

  def to_hex(int)
    int.to_s(16)
  end

  def casecmp(x, y)
    x.casecmp(y) == 0
  end
end
