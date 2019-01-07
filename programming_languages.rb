require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }
 
  }
}

# You are given a hash where the keys are the styles of the languages and the values are also hashes. These nested hashes have a key of the name of the language and value of the languages attributes, which is also a hash. These inner-most hashes have key/value pairs of type and type value.
# Iterate over the hash and build a new hash that has the languages as keys that point to a value of a hash that describes the type and style.

# So, I want to create a new has with the top-level key as the programming language (e.g, :ruby, :javascript, etc.) and its value will be a hash which keys :type and :style along with their values. So first pull the keys needed. Then pull the values and make them into a hash to add as the values of the top-level key. 

#Start by setting a variable, let's call it new_hash equal to an empty hash. Throughout your iteration over the languages hash, you can then add new key/value pairs to new_hash. At the end of your method, return new_hash.
# Remember that you can create key/value pairs by using the []= method on a hash. 

# So, i had something written down, but it was erased b/c poor cafe internet. Buuutt, what's my approach with this? What do I have? A hash called languages with (3) keys, and (4) values - or (1) top-level key with a value of (3) levels of key-value pairs. What's my goal? To build a method that will reformat the hash. I want to grab a key or value and place it above or below another key/value. How do I grab something and change its location? 


def reformat_languages(languages)
  new_languages_hash = {}
  
  languages.each do |style_key, language_val|
    language_val.each do |language_key, type_val|
      type_val.each do |type_key, string_val|
      	#new_languages_hash[language_key] ||= {}
      	if new_languages_hash[language_key].nil?
      		new_languages_hash[language_key] = {}
      	end
      	new_languages_hash[language_key][:style] ||= []
      	new_languages_hash[language_key][:style] << style_key
      	if new_languages_hash[language_key][type_key].nil?
      		new_languages_hash[language_key][type_key] = string_val
      	end      
      end
    end
  end
  new_languages_hash
end



reformat_languages(languages)


