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


def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  
  hash= load_library(file_path)
  
  #binding.pry
  
  japanese_emoticon = ""
  
  hash.each do |key, value|
    
    #binding.pry
    
    if value[:english] == emoticon
      
      japanese_emoticon = value[:japanese]
      
    end
    
    
  end  
   
  if japanese_emoticon != ""
    
    japanese_emoticon
    
  else
    
    "Sorry, that emoticon was not found"
  
  end 
  
end



def get_english_meaning(file_path, emoticon)
  # code goes here
  
  hash= load_library(file_path)
  
  english_key=""
  
  #binding.pry
  
  hash.each do |key, value|
    
    #binding.pry
    
    if value[:japanese] == emoticon 
      
      english_key= key
      
      #binding.pry 
      
    end
    
  end 
  
  if english_key != ""
    
    english_key
    
  else
    
    "Sorry, that emoticon was not found"
    
  end
  
end