#Classes ---------------------------
class Hero
  attr_reader :heroName
  attr_reader :secretName
  attr_reader :weakness
  attr_accessor :fallen #Only one that needs edit ability
  
  def initialize(heroName, secretName, weakness)
    @heroName = heroName.to_sym
    @secretName = secretName.to_sym
    @weakness = weakness.to_sym
    heroName = {secretName: secretName, weakness: weakness, fallen: false}
  end
end

#Functions -------------------------
def caseDo(response, heroes)
  case response
    
    when 1 #Enter Hero
        puts "Please input a super hero name."
        heroName = gets.downcase.to_sym
        puts "Enter their secret identity."
        secretName = gets.downcase
        puts "Enter the hero's weakness."
        weakness = gets.downcase

        "#{heroName}" = Hero.new(heroName, secretName, weakness) #Variable object name
        heroes << heroName #Should now refer to the object

        askIntentions(heroName)

      when 2 #Report fallen hero
        puts "Please input the name of the fallen hero."
        if (heroes.include?(gets.downcase)) #Hero is in database
          index = heroes.index(gets.downcase)
          heroes[index][:fallen] = true
          puts "Thank you for reporting our hero fallen. May they rest in peace."
        else #Hero not yet in database
          heroName = gets.downcase
          "#{heroName}" = Hero.new(heroName, secretName, weakness)
          heroName.fallen = true
          heroes << heroName
          puts "Thank you for reporting our hero fallen. May they rest in peace."
        end
        askIntentions(heroes)

      when 3 #See just hero names
        if (heroes.empty?)
          puts "There are no heroes in the database!"
        else
          heroes.each do
            puts heroes
          end
        end
        askIntentions(heroes)

      when 4 #See hero names, identities, and weaknesses
        puts "Please enter the super secret password!" #0000
        if (gets.chomp == "0000") #Correct Password
          if (heroes.empty?)
            puts "There are no heroes in the database!"
          else
            heroes.each do |x|
              puts heroes[x]
              heroes.each do |key, value|
                puts heroes[x][secretName]
                puts heroes[x][weakness]
              end
              puts "#{heroes[x]} is fallen."
            end
          end
        else
          puts "Incorrect password. Returning to menu."
        end
        askIntentions(heroes)

      when 5 #View memorial
        unless (fallenHero.empty?)
          heroes.each do |x|
            puts heroes if heroes[x][:fallen] == true
          end
        else
          puts "There are no fallen heroes in the database!"
        end
        askIntentions(heroes)

      else
        while not (1..5).cover?(response) do #incorrect input
          puts "You did not enter a valid option. Please try again."
          response = gets.to_i
        end

  end #case
end
------
def askIntentions(heroes)
  puts "What would you like to do?\n1) Enter hero info\n2) Report a fallen hero\n3) See hero info\n4) See secret identities and weaknesses\n5) View the fallen's memorial\nType 'Exit' to close the program."
    response = gets..to_i
  caseDo(response, heroes)
end

def capitalizeHero(name) #Just makes the hero's name nice and pretty (code borrowed from interwebz)
  name.split.map(&:capitalize)*' '
end
------
#def exitProgram #Still working on it...
#  if (response.to_s.downcase == :exit)
#    exit
#  end
#end