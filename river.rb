class River
    attr_reader :name, :all_fish
    
    def initialize(name)
        @name = name
        @all_fish = []
    end



    def amount_of_fish()
    return @all_fish.length()
    end

    def add_fish_to_river(fish)
        @all_fish << fish
    end

    def remove_fish_from_river(fish)
        index = @all_fish.index(fish)
        @all_fish.slice!(index, 1)

    end

    def clear_river()
        @all_fish.clear()
    end
    
    # def feed_fish_from_river(river)
    # # aquired_fish = river.all_fish.shift()
    # # add_fish_to_river(aquired_fish)
    # end

    def feed_fish_from_river(bear)
        # for fish in bear
        #     add_fish_to_river(fish)
        # end
        # river.clear_river()
      end
   
    
    
    



end