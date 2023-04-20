require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
total_array = []

crypto_array = page.xpath('//tbody/tr').map do |row|
    name = row.xpath('td[3]/div').text
    price = row.xpath('td[5]/div/a').text
    { name => price }
  end
total_array = crypto_array

p total_array



#crypto_name_array = page.xpath('//*[@class="cmc-table__column-name--name cmc-link"]').map {|elem| elem.text}
##puts crypto_name_array
#
#crypto_price_array = page.xpath('//tbody/tr/td/div/a[@class="cmc-link"]').map {|elem2| elem2.text}
##puts crypto_price_array
#
#crypto_array = crypto_name_array.zip(crypto_price_array).map do |name, price|
#    { name.text => price.text }
#end

#my_hash = Hash[crypto.zip(value)]