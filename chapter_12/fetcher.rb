require "net/http"

pages = %w[www.rubycentral.org www.pragprog.com www.google.com]

threads = pages.map do |page_to_fetch|
  Thread.new(page_to_fetch) do |url|
    http = Net::HTTP.new(url, 80)
    print "Fetching: #{url}\n"
    response = http.get("/")
    print "Got #{url}: #{response.message}\n"
  end
end
threads.each { |thread| thread.join }
print "We're done here!\n"
