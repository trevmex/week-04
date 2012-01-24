
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def display_superheroes(superhero, some_more_superheroes = nil)
  hero_hash = {}
  
  [superhero, some_more_superheroes].each do |hero|
    if hero.is_a? Array
      hero.each do |supes|
        hero_hash[supes.name] = supes
      end
    else
      hero_hash[hero.name] = hero
    end unless hero.nil?
  end
  
  hero_hash.each_value do |hero|
    puts hero
  end
end