require "twitter"

class TwitterChecker

  account_name = ARGV[0]
  regex_to_match = ARGV[1].downcase

  puts "Starting to scan tweets from #{account_name} for regex \"#{regex_to_match}\""
  while true
    # Check the latest Tweet for the requested regular expression
    first_tweet = Twitter.user_timeline(account_name).first.text
    if first_tweet.downcase.scan(regex_to_match)
      puts "#{account_name} just tweeted something that matched \"#{regex_to_match}\": #{first_tweet}"
      system "say #{account_name} just tweeted something that matched your regular expression!"
    end
  #  Twitter only allows about 2 requests per minute
  sleep 35
  end

end
