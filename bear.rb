class Bear
    attr_reader :name, :type, :stomach

    def initialize(name, type)
        @name = name
        @type = type
        @stomach = []

    end
    def how_full_is_stomach()
        return @stomach.length()
    end
    def add_food_in_stomach(fish)
        @stomach << fish
    end
    def poop
        @stomach.clear()
    end
    

   


end