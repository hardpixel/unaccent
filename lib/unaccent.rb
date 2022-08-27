require 'unaccent/accentmap'
require 'unaccent/version'

module Unaccent
  class << self
    # Replace a string's accented characters with unaccented characters.
    #
    # @example
    #   str = 'Å Ç ß'
    #   Unaccent.unaccent(str) = > 'AA C ss'
    #
    # @return [String] a string that has no accents

    def unaccent(str)
      via_gsub(str)
    end

    # Replace a string's accented characters with unaccented characters,
    # by using string `#gsub` to replace non-ascii characters.
    #
    # @example
    #   str = 'Å Ç ß'
    #   Unaccent.via_gsub(str) = > 'AA C ss'
    #
    # @return [String] a string that has no accents

    def via_gsub(str)
      return str if str.ascii_only?

      str.gsub(/[^[:ascii:]]/) { |c| ACCENTMAP.fetch(c, c) }
    end

    # Replace a string's accented characters with unaccented characters,
    # by using string `#scan` to iterate on characters.
    #
    # @example
    #   str = 'Å Ç ß'
    #   Unaccent.via_scan(str) = > 'AA C ss'
    #
    # @return [String] a string that has no accents

    def via_scan(str)
      return str if str.ascii_only?

      res = ''; str.scan(/./) { |c| res << ACCENTMAP.fetch(c, c) }; res
    end

    # Replace a string's accented characters with unaccented characters,
    # by using string `#each_char` to iterate on characters.
    #
    # @example
    #   str = 'Å Ç ß'
    #   Unaccent.via_each_char(str) = > 'AA C ss'
    #
    # @return [String] a string that has no accents

    def via_each_char(str)
      return str if str.ascii_only?

      res = ''; str.each_char { |c| res << ACCENTMAP.fetch(c, c) }; res
    end

    # Replace a string's accented characters with unaccented characters,
    # by using string `#split` and `#map` to iterate on characters.
    #
    # @example
    #   str = 'Å Ç ß'
    #   Unaccent.via_split_map(str) = > 'AA C ss'
    #
    # @return [String] a string that has no accents

    def via_split_map(str)
      return str if str.ascii_only?

      str.split(//u).map { |c| ACCENTMAP.fetch(c, c) }.join
    end
  end
end
