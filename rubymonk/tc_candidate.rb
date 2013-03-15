require 'test/unit'
require './candidate'


class TestCandidate < Test::Unit::TestCase

  def setup
    @enough_year = Candidate.new(2, 499, %w(Ruby Python), false, 15)
    @enough_github = Candidate.new(1, 500, %w(Ruby Python), false, 15)
    @no_year_github = Candidate.new(1, 499, %w(Ruby Python), false, 15)
    @no_ruby = Candidate.new(2, 500, %w(Python), false, 15)
    @applied = Candidate.new(2, 500, %w(Ruby Python), true, 15)
    @no_age = Candidate.new(2, 500, %w(Ruby Python), false, 14)
  end

  def teardown
    # nothing really
  end

  def test_candidate
    assert_equal true, @enough_year.experienced_programmer?
    assert_equal true, @enough_github.experienced_programmer?
    assert_equal false, @no_year_github.experienced_programmer?
    assert_equal false, @no_ruby.experienced_programmer?
    assert_equal false, @applied.experienced_programmer?
    assert_equal false, @no_age.experienced_programmer?
  end

end
