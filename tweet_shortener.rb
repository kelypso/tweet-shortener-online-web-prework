def dictionary
  substitute = {
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
end

def word_substituter(string)
  string.split(" ").collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect do |string|
    puts word_substituter(string)
  end
end

def selective_tweet_shortener(tweets)
  #tweets.split(" ").collect do |string|
   # if string.length > 140
    #  word_substituter(string)
    #elsif string.length <= 140
     # string
   # end
#  end
  tweets > 140 ? word_substituter(tweets) : tweets
end

def shortened_tweet_truncator(tweets)
  
end
