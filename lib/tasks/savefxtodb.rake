namespace :savefxtodb do

    # desc "Saves BDC FX rate to the DB"
    # task :savebdc => :environment do
    #         require 'openssl'
    #         require 'open-uri'
    #         doc = Nokogiri::HTML(open('http://www.abokifx.com/bdcs/'))
    #
    #         entries = doc.css('#main')
    #         title = entries.css('table')[0].css('tr')[2].css('td')[1].text
    #         title = title[6..8]
    #         puts title
    #         Rate.create(bdcrates: title)
    # end

    desc "Saves Parallel FX rate to the DB"
    task :saveparallel => :environment do
            require 'twitter'

            client = Twitter::REST::Client.new do |config|
              config.consumer_key        = "oCg7Wi1bgA5HmtaU6mPXrUKm7"
              config.consumer_secret     = "AZKfY80stIUDfNjLZrGJhcC8iLWt2iAOFaQ4XljK3rpS3PXXqd"
              config.access_token        = "803004458254929920-Adyl2XpgefUQ2vWmXWQFv8MIb5tpkZw"
              config.access_token_secret = "7tWRZWbBTZe8SkGYufHuxJN4xDUGlEj0SgQCwaRd922FS"
            end

            require 'openssl'
            require 'open-uri'
            doc = Nokogiri::HTML(open('http://www.abokifx.com/'))

            entries = doc.css('#main')
            title = entries.css('table')[0].css('tr')[2].css('td')[1].text
            title = title[6..8]
            # puts title
            # Rate.create(fxrate: title)
            # tweet =  Rate.distinct.pluck(:fxrate)
            #
            # tweet = tweet.strip
            client.search('#hmadc').take(5).each do |tweet|
              client.update("@#{tweet.user.screen_name} A dollar costs N#{title}")
            end
    end

    desc "Saves Parallel FX rate to the DB"
    task :saveparallelm => :environment do
            require 'twitter'

            client = Twitter::REST::Client.new do |config|
              config.consumer_key        = "oCg7Wi1bgA5HmtaU6mPXrUKm7"
              config.consumer_secret     = "AZKfY80stIUDfNjLZrGJhcC8iLWt2iAOFaQ4XljK3rpS3PXXqd"
              config.access_token        = "803004458254929920-Adyl2XpgefUQ2vWmXWQFv8MIb5tpkZw"
              config.access_token_secret = "7tWRZWbBTZe8SkGYufHuxJN4xDUGlEj0SgQCwaRd922FS"
            end

            require 'openssl'
            require 'open-uri'
            doc = Nokogiri::HTML(open('http://www.abokifx.com/'))

            entries = doc.css('#main')
            title = entries.css('table')[0].css('tr')[2].css('td')[1].text
            title = title[6..8]
            # puts title
            # Rate.create(fxrate: title)
            # tweet =  Rate.distinct.pluck(:fxrate)
            #
            # tweet = tweet.strip
            client.update("Morning, A dollar costs N#{title} ")
            client.search('#hmadc').take(5).each do |tweet|
              client.update("@#{tweet.user.screen_name} A dollar costs N#{title}")
            end
    end

    desc "Saves Parallel FX rate to the DB"
    task :saveparallela => :environment do
            require 'twitter'

            client = Twitter::REST::Client.new do |config|
              config.consumer_key        = "oCg7Wi1bgA5HmtaU6mPXrUKm7"
              config.consumer_secret     = "AZKfY80stIUDfNjLZrGJhcC8iLWt2iAOFaQ4XljK3rpS3PXXqd"
              config.access_token        = "803004458254929920-Adyl2XpgefUQ2vWmXWQFv8MIb5tpkZw"
              config.access_token_secret = "7tWRZWbBTZe8SkGYufHuxJN4xDUGlEj0SgQCwaRd922FS"
            end

            require 'openssl'
            require 'open-uri'
            doc = Nokogiri::HTML(open('http://www.abokifx.com/'))

            entries = doc.css('#main')
            title = entries.css('table')[0].css('tr')[2].css('td')[1].text
            title = title[6..8]
            # puts title
            # Rate.create(fxrate: title)
            # tweet =  Rate.distinct.pluck(:fxrate)
            #
            # tweet = tweet.strip
            client.update("Afternoon, A dollar costs N#{title} ")
            client.search('#hmadc').take(5).each do |tweet|
              client.update("@#{tweet.user.screen_name} A dollar costs N#{title}")
            end
    end

    desc "Saves Parallel FX rate to the DB"
    task :saveparallele => :environment do
            require 'twitter'

            client = Twitter::REST::Client.new do |config|
              config.consumer_key        = "oCg7Wi1bgA5HmtaU6mPXrUKm7"
              config.consumer_secret     = "AZKfY80stIUDfNjLZrGJhcC8iLWt2iAOFaQ4XljK3rpS3PXXqd"
              config.access_token        = "803004458254929920-Adyl2XpgefUQ2vWmXWQFv8MIb5tpkZw"
              config.access_token_secret = "7tWRZWbBTZe8SkGYufHuxJN4xDUGlEj0SgQCwaRd922FS"
            end

            require 'openssl'
            require 'open-uri'
            doc = Nokogiri::HTML(open('http://www.abokifx.com/'))

            entries = doc.css('#main')
            title = entries.css('table')[0].css('tr')[2].css('td')[1].text
            title = title[6..8]
            # puts title
            # Rate.create(fxrate: title)
            # tweet =  Rate.distinct.pluck(:fxrate)
            #
            # tweet = tweet.strip
            client.update("Evening, A dollar costs N#{title} ")
            client.search('#hmadc').take(5).each do |tweet|
              client.update("@#{tweet.user.screen_name} A dollar costs N#{title}")
            end
    end

end
