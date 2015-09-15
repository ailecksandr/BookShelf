require 'nokogiri'
require 'open-uri'

class NewsController < ApplicationController
  def index
    # Parse the URI and retrieve it to a temporary file
    doc = Nokogiri::HTML(open('http://www.telegraph.co.uk/culture/books/booknews'))
    @articles={}
    @image_urls=[]

    doc.css('div.auto_03_initial_range div.summary').each do |link|
      title=link.css('h3 a').text
      text=link.css('div.labelAbstract p').text
      link.css('div.piccentre a img').each do |img|
          @image_urls<<img[:src]
      end
      @articles[title]=text
    end


  end
end
