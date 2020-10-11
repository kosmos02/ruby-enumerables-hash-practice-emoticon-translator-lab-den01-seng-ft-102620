# require modules here

require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  
  emojis = YAML.load_file(file_path)
  
  emojis.each do |key, value|
    
    binding.pry
    
    
    
  
  
   # binding.pry
    
    
  end
  
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end