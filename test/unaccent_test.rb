# frozen_string_literal: true

require 'test_helper'

class UnaccentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil Unaccent::VERSION
  end

  def test_that_it_converts_unaccented
    assert_equal 'abc', Unaccent.unaccent('abc')
  end

  def test_that_it_converts_angstrom
    assert_equal 'A', Unaccent.unaccent('Å')
  end

  def test_that_it_converts_double_leter
    assert_equal 'AE', Unaccent.unaccent('Æ')
  end

  def test_that_it_converts_french
    assert_equal 'deja vu', Unaccent.unaccent('déjà vu')
  end

  def test_that_it_converts_greek
    assert_equal 'μολων λαβε', Unaccent.unaccent('μολὼν λαβέ')
  end

  def test_that_it_converts_every_character
    Unaccent::ACCENTMAP.each do |from, to|
      assert_equal to, Unaccent.unaccent(from)
    end
  end
end
