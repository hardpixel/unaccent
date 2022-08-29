require 'unaccent/version'

module Unaccent
  autoload :ACCENTMAP, 'unaccent/accentmap'

  class << self
    # Replace a string's accented characters with unaccented characters.
    #
    # @example
    #   str = 'Å Ç ß'
    #   Unaccent.unaccent(str) = > 'AA C ss'
    #
    # @return [String] a string that has no accents

    def unaccent(str)
      return str if str.ascii_only?

      result = String.new('')

      str.each_codepoint do |code|
        if code < 160
          result << code
        else
          rc = ACCENTMAP.fetch(code, code)

          if rc.is_a? Array
            rc.each { |cp| result << cp }
          else
            result << rc
          end
        end
      end

      result
    end
  end
end
