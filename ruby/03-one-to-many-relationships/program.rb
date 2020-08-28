require 'pry'
require_relative "./owner.rb"

class Kitten

    attr_accessor :name, :breed, :owner

    @@all =[]

    def initialize(name, breed)
        @name = name
        @breed = breed

        self.class.all << self
    end

    def self.all
        @@all
    end

    def get_owned(owner)
        @owner = owner
    end

    def owner
        if @owner == nil
            puts "I am cold and alone"
        else
            @owner
        end
    end

end


cat1 = Kitten.new("Slyvester", "idk")
owner = Owner.new("Antonio")

binding.pry
0