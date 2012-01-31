# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def search_for_quote(options)
  quotes = all_quotes(options.delete(:file))

  options.each do |key, value|
    quotes = quotes.find_all {|quote| quote.send("#{key}?", value)} if value
  end

  quotes
end
