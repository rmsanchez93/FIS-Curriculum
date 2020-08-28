class Owner
    attr_reader :name, :cats
    def initialize(name)
        @name = name
        @cats = []
    end
    def say_hi
        puts "Hey, I'm #{@name}"
    end

    def adopt_cat(cat)
        if cats.include?(cat)
            puts "This cat already was adopted by you, #{@name}"
        else
            cat.owner = self
            @cats << cat
        end
    end



end