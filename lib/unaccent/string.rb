require 'unaccent'

module Unaccent
  module String
    def unaccent
      Unaccent.unaccent(self)
    end
  end
end

class String
  include Unaccent::String
end
