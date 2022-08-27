require 'test_helper'

class UnaccentTest < Minitest::Test
  METHODS = %w[gsub scan each_char split_map].freeze

  METHODS.each do |mid|
    describe "via #{mid}" do
      it 'with plain' do
        assert_equal Unaccent.send(:"via_#{mid}", 'abc'), 'abc'
      end

      it 'with angstrom' do
        assert_equal Unaccent.send(:"via_#{mid}", 'Å'), 'A'
      end

      it 'with double letter' do
        assert_equal Unaccent.send(:"via_#{mid}", 'Æ'), 'AE'
      end

      it 'with french' do
        assert_equal Unaccent.send(:"via_#{mid}", 'déjà vu'), 'deja vu'
      end

      it 'with greek' do
        assert_equal Unaccent.send(:"via_#{mid}", 'νέα'), 'νεα'
      end
    end
  end
end
