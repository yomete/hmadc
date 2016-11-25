class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  class Entry
    def initialize(title)
      @title = title
    end
    attr_reader :title
  end

  def letsencrypt
    # use your code here, not mine
    render text: "PGSveN5VbU9M3Volp30F8me_4MorGb2tdhlKxbgnNkU.W8j0ttwL2jZOk5pFjjQcYJn2O3DI7Nf0gloXWDqH690"
  end

  def scrape_abokifx_latest

    require 'openssl'
    doc = Nokogiri::HTML(open('http://www.abokifx.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

    entries = doc.css('#main')
    @entriesArray = []
    entries.each do |entry|
      title = entry.css('table')[0].css('tr')[2].css('td')[1].text
      @entriesArray << Entry.new(title)
    end

    render template: 'scrape_abokifx_latest'
  end

end
