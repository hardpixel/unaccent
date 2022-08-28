require 'test_helper'

class UnaccentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil Unaccent::VERSION
  end

  def test_that_it_converts_unaccented
    assert_equal Unaccent.unaccent('abc'), 'abc'
  end

  def test_that_it_converts_angstrom
    assert_equal Unaccent.unaccent('Å'), 'A'
  end

  def test_that_it_converts_double_leter
    assert_equal Unaccent.unaccent('Æ'), 'AE'
  end

  def test_that_it_converts_french
    assert_equal Unaccent.unaccent('déjà vu'), 'deja vu'
  end

  def test_that_it_converts_greek
    assert_equal Unaccent.unaccent('νέα'), 'νεα'
  end

  def test_that_it_converts_every_character
    Unaccent::ACCENTMAP.each do |from, to|
      assert_equal to, Unaccent.unaccent(from)
    end
  end
end
