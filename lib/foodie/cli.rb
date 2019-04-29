module Foodie
  class CLI < Command
    class_option :verbose, type: :boolean
    class_option :noop, type: :boolean

    desc 'hello NAME', 'say hello to NAME'
    long_desc Help.text(:hello)
    option :from, desc: 'from person'
    def hello(name = 'you')
      puts "from: #{options[:from]}" if options[:from]
      puts "Hello #{name}"
    end

    desc 'version', 'prints version'
    def version
      puts Foodie::VERSION
    end

    desc 'portray ITEM', 'Determines if a piece of food is gross or delicious'
    def portray(name)
      puts Foodie::Food.portray(name)
    end

    desc 'pluralize', 'Pluralizes a word'
    method_option :word, aliases: '-w'
    def pluralize
      puts Foodie::Food.pluralize(options[:word])
    end

    desc 'recipe', 'Generates a recipe scaffold'
    def recipe(group, name)
      Foodie::Generators::Recipe.start([group, name])
    end
  end
end
