require 'minitest/autorun'
require 'minitest/pride'
require './lib/exhibit.rb'
require './lib/patron.rb'


class PatronTest < Minitest::Test

  def setup
    @patron_1 = Patron.new("Bob", 20)
    @patron_1.add_interest("Dead Sea Scrolls")
    @patron_1.add_interest("Gems and Minerals")
  end

  def test_it_exists
    assert_instance_of Patron, @patron_1
  end

  def test_it_has_attributes

    assert_equal "Bob", @patron_1.name
    assert_equal 20, @patron_1.spending_money
    assert_equal [], @patron_1.interests
  end

  def test_it_can_add_interests

    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], @patron_1.interests
  end

end


# pry(main)> patron_1.add_interest("Dead Sea Scrolls")
#
# pry(main)> patron_1.add_interest("Gems and Minerals")
#
# pry(main)> patron_1.interests
# # => ["Dead Sea Scrolls", "Gems and Minerals"]
