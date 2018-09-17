# require modules here
require "yaml"

def load_library path
  dict = YAML.load_file path
  ret = {'get_meaning' => {}, 'get_emoticon' => {}}
  rmean = ret['get_meaning']
  emean = ret['get_emoticon']
  dict.each do |meaning, emotes|
    
  end
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end