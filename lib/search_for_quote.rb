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
  quotes = quotes.find_all {|quote| quote.include? options[:include]} if options[:include]
  quotes = quotes.find_all {|quote| quote.start_with? options[:start_with]} if options[:start_with]
  quotes = quotes.find_all {|quote| quote.end_with? options[:end_with]} if options[:end_with]

  quotes
end
