def dictionary
dictionary = {
"hello" => 'hi',
"to" => '2',
"too" => '2',
"two" => '2',
"for" => '4',
"four" => '4',
'be' => 'b',
'you' => 'u',
"at" => "@",
"and" => "&",
}
end
def word_substituter(tweet)
  replace = ""
  tweetarray = tweet.split
  tweetarray.each do |i|
    templetter = i
    oldletter = i.downcase
    if dictionary.keys.include?(oldletter)
      replace = dictionary[oldletter]
      tweetarray.map! {|i| i == templetter ? replace : i}
    end
    end
    shorttweet = tweetarray.join(" ")

  end

def bulk_tweet_shortener(tweets)
tweets.each do |tweet|
  puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator (tweet)
  newtweet = selective_tweet_shortener(tweet)
  if newtweet.length > 140
    newtweet = "#{newtweet[1..137]}..."
  else
    newtweet
  end
end
