# require modules here

require 'yaml'
require 'pry'

def load_library(file_path)
  # code goes here
  
  emojis = YAML.load_file(file_path)
  
  new_hash = {}
  
  emojis.each do |key, value|
    
    new_hash[key]= {}
    
    new_hash[key][:english] = value[0]
    
    new_hash[key][:japanese] = value[1]
    
    
  end
  
  new_hash
  
end


def get_japanese_emoticon(emoticon)
  # code goes here
  
  load_library
  
  binding.pry
    
    
    
   
  
  
  
end

def get_english_meaning
  # code goes here
end