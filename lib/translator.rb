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
  
  #load_library(file_path)
  
  #binding.pry
    
    
    
   
  
  
  
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  
  hash= load_library(file_path)
  
  english_key=""
  
  #binding.pry
  
  hash.include?(emoticon) do |key, value|
    
    if key[:english] == emoticon 
      
      english_key= key
      
    end
    
    binding.pry
    
    
    
    
  end 
end