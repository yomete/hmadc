namespace :savefxtodb do

    desc "Saves BDC FX rate to the DB"
    task :savebdc => :environment do
            require 'openssl'
            require 'open-uri'
            doc = Nokogiri::HTML(open('http://www.abokifx.com/bdcs/'))

            entries = doc.css('#main')
            title = entries.css('table')[0].css('tr')[2].css('td')[1].text
            title = title[6..8]
            puts title
            Rate.create(bdcrates: title)
    end

    desc "Saves Parallel FX rate to the DB"
    task :saveparallel => :environment do
            require 'openssl'
            require 'open-uri'
            doc = Nokogiri::HTML(open('http://www.abokifx.com/'))

            entries = doc.css('#main')
            title = entries.css('table')[0].css('tr')[2].css('td')[1].text
            title = title[6..8]
            puts title
            Rate.create(fxrate: title)
    end

end
