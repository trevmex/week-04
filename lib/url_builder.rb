

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#

def query_param_builder(params)
  params.map do |key, value|
    "#{key}=#{value}" unless value.nil?
  end.compact.join("&")
end

def url_builder(url, params = {:results => '10'})
  "#{url}?#{query_param_builder(params)}"
end
