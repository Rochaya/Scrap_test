require 'rubygems'
require 'nokogiri'
require 'open-uri'


mail_array = []
 page_base = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/95/avernes.html"))
 page_oise = Nokogiri::HTML(URI.open("https://www.annuaire-des-mairies.com/val-d-oise.html"))

def mail_selector(page)
    mail = page.xpath('//tbody/tr').map do |txt|
        name = txt.xpath('td[contains(text(), "@")]').text.strip
        puts name
    end
end

#def multi_mail_selector(url)
#     page = Nokogiri::HTML(URI.open(url))
#     mail_selector(page_base)
#end
#def get_city_links(url)
#     page = Nokogiri::HTML(URI.open(url))
#     link = page.css("a.lientxt")
#     link.map { |link| link["href"] }
#end
#city_links = get_city_links(page_oise)
#city_links.each do |link|
#     full_url = "#{page_base}/#{link}"
#     multi_mail_selector(full_url)
#end
#
#puts city_links