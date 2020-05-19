require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish.rb')
require_relative('../bear.rb')
require_relative('../river.rb')

class BearTest < MiniTest::Test

    def setup()
        @bear = Bear.new("Yogi", "Grizzly") 
        @fish = Fish.new("Mackeral")
        @big_fish = Fish.new("Megalodon")
    end
    def test_can_create_bear
        assert_equal(Bear, @bear.class())
    end
    def test_how_full_is_stomach
        assert_equal(0, @bear.how_full_is_stomach())
    end
    def test_add_food_in_stomach
        @bear.add_food_in_stomach(@fish)
        assert_equal(1, @bear.how_full_is_stomach())
    end
    def test_poop
        @bear.add_food_in_stomach(@fish)
        @bear.add_food_in_stomach(@big_fish)
        @bear.poop()
        assert_equal(0, @bear.how_full_is_stomach())
    end


end