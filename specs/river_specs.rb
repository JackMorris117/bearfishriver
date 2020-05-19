require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')



class RiverTest < MiniTest::Test
    def setup
        @river = River.new("Amazon")
        @fish1 = Fish.new("Kingfisher")
        @fish2 = Fish.new("Salmon")
        @fish3 = Fish.new("Haddock")
        @fish4 = Fish.new("Cod")
        @fish5 = Fish.new("Sea Bass")

    end
    def test_can_create_river()
        assert_equal(River, @river.class())
    end

    def test_can_be_empty
        assert_equal(0, @river.amount_of_fish())
    end
    def test_can_add_fish_to_river
        @river.add_fish_to_river(@fish1)
        assert_equal(1, @river.amount_of_fish())
    end
    def test_can_add_multiple_fish_to_river
        @river.add_fish_to_river(@fish1)
        @river.add_fish_to_river(@fish2)
        @river.add_fish_to_river(@fish3)
        @river.add_fish_to_river(@fish4)
        @river.add_fish_to_river(@fish5)
        assert_equal(5, @river.amount_of_fish())
    end

    def remove_fish_from_river
        @river.add_fish_to_river(@fish1)
        @river.add_fish_to_river(@fish2)
        @river.add_fish_to_river(@fish3)
        @river.add_fish_to_river(@fish4)
        @river.supply_fish(@fish4)
        assert_equal(3, @river.amount_of_fish())
    end

    def test_feed_fish_from_river
        @big_bear = Bear.new("Garry", "Brown Bear")
        @big_bear.add_food_in_stomach(@fish1)
        @river.feed_fish_from_river(@big_bear)
        assert_equal(0, @river.amount_of_fish)
        assert_equal(1, @big_bear.how_full_is_stomach())

    end
 
    def test_feed_on_multiple_fish_from_river
        @big_bear = Bear.new("Garry", "Brown Bear")
        @big_bear.add_food_in_stomach(@fish1)
        @big_bear.add_food_in_stomach(@fish2)
        @big_bear.add_food_in_stomach(@fish3)
        @river.feed_fish_from_river(@big_bear)
        assert_equal(0, @river.amount_of_fish)
        assert_equal(3, @big_bear.how_full_is_stomach())

    end





end
