require 'pry'
require 'yaml'
YAML.load_file("./lib/emoticons.yml")

def load_library(emo_path)
  emo_path = YAML.load_file("./lib/emoticons.yml")
  emo_lib = { "get_meaning" => {},
              "get_emoticon" => {}
  }
  emo_path.each do |key, value|
    english = value[0]
    japanese = value[1]
    emo_lib["get_meaning"][japanese] = key
    emo_lib["get_emoticon"][english] = japanese
    binding.pry
  end
  return emo_lib
end

def get_japanese_emoticon(emo_path, emo_lib)
  new_path = load_library(emo_path)
  emoticons_japanese = new_path["get_emoticon"] = japanese
  binding.pry
end

def get_english_meaning
  # code goes here
end

=begin
def get_japanese_emoticon(path, emoticon)
  new_path = load_library(path)
  emoticons_japanese = new_path['get_emoticon'][emoticon]
  emoticons_japanese ? emoticons_japanese : "Sorry, that emoticon was not found"
end
  

def get_english_meaning(path, emoticon)
  new_path = load_library(path)
  emoticons_english = new_path['get_meaning'][emoticon]
  emoticons_english ? emoticons_english : "Sorry, that emoticon was not found"
end
=end