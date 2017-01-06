class BdcRatesController < ApplicationController

  class Entry
    def initialize(title)
      @title = title
    end
    attr_reader :title
  end

  def bdcrates
    require 'openssl'
    doc = Nokogiri::HTML(open('http://www.abokifx.com/bdcs/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

    entries = doc.css('#main')
    @entriesArray = []
    entries.each do |entry|
      title = entry.css('table')[0].css('tr')[2].css('td')[1].text
      title = title[6..8]
      @entriesArray << Entry.new(title)
    #   The code below saves the scraped rate to the db
      # Rate.create bdcrates: @entriesArray
    end

    render template: 'bdc_rates/bdcrates'
  end

end
