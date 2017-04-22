namespace :savefxtodb do

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
            doc = Nokogiri::HTML(open('https://www.abokifx.com/'))

            entries = doc.css('.lagos-market-rates-inner')
            title = entries.css('table')[0].css('tr')[1].css('td')[1].text
            title = title[6..8]

            client.update("Morning, A dollar costs N#{title} ")
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
            doc = Nokogiri::HTML(open('https://www.abokifx.com/'))

            entries = doc.css('.lagos-market-rates-inner')
            title = entries.css('table')[0].css('tr')[1].css('td')[1].text
            title = title[6..8]

            client.update("Afternoon, A dollar costs N#{title} ")

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
            doc = Nokogiri::HTML(open('https://www.abokifx.com/'))

            entries = doc.css('.lagos-market-rates-inner')
            title = entries.css('table')[0].css('tr')[1].css('td')[1].text
            title = title[6..8]

            client.update("Evening, A dollar costs N#{title} ")

    end

end
