def word_substituter(tweet)
  tweet_array = tweet.split(" ")
  i = 0
  while i < tweet_array.length
    word = tweet_array[i]
    short_word = dictionary(word)
    #puts "original: #{word}, new: #{short_word}"
    tweet_array[i] = short_word
    i += 1
  end
  return tweet_array.join(" ")
end

def dictionary(word)
  dictionary_hash = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  
  if dictionary_hash.keys.include? word.downcase
    return dictionary_hash.fetch(word.downcase)
  end
  return word
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  return tweet
end