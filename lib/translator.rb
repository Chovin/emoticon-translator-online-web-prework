# require modules here
require "yaml"

def load_library path
  dict = YAML.load_file path
  ret = {'get_meaning' => {}, 'get_emoticon' => {}}
  rmean = ret['get_meaning']
  remot = ret['get_emoticon']
  dict.each do |meaning, (emote, jmote)|
    rmean[jmote] = meaning
    remot[emote] = jmote
  end
  ret
end

def get_japanese_emoticon path, emote
  load_library(path)['get_emoticon'][emote] || 
end

def get_english_meaning path, emote
  load_library(path)['get_meaning'][emote]
end