require "open-uri"
URI.open("https://pragprog.com/news/index.html") do |web_page|
  output = File.open("index.html", "w")
  while (line = web_page.gets)
    output.puts line
  end
  output.close
end