class ParallelRatesController < ApplicationController

  class Entry
    def initialize(title)
      @title = title
    end
    attr_reader :title
  end

  def parallelrates

    require 'openssl'
    doc = Nokogiri::HTML(open('https://www.abokifx.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

    entries = doc.css('.lagos-market-rates-inner')
    @entriesArray = []
    entries.each do |entry|
      title = entry.css('table')[0].css('tr')[1].css('td')[1].text
      title = title[6..8]
      @entriesArray << Entry.new(title)
      #   The code below saves the scraped rate to the db
      # Rate.create fxrate: @entriesArray
    end

    render template: 'parallel_rates/parallelrates'
  end

end
