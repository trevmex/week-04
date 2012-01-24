
# 
# Here is where you will write the method #display_superheroes.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def display_superheroes(superheroes, more_superheroes = nil)
  superheroes_hash = {}
  [superheroes, more_superheroes].each do |supes|
    if supes.is_a? Array
      supes.each do |superhero|
        superheroes_hash[superhero.name] = superhero
      end
    else
      superhero = supes
      superheroes_hash[superhero.name] = superhero
    end unless supes.nil?
  end
  superheroes_hash.each_value do |supes|
    puts supes
  end
end
