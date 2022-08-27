require 'unaccent'

module Unaccent
  module String
    def unaccent
      Unaccent.unaccent(self)
    end

    def unaccent_via_gsub
      Unaccent.via_gsub(self)
    end

    def unaccent_via_each_char
      Unaccent.via_each_char(self)
    end

    def unaccent_via_split_map
      Unaccent.via_split_map(self)
    end
  end
end

class String
  include Unaccent::String
end
