require "open-uri"

def download(url, path)
	p 'started'
  File.open(path, "w") do |f|
    IO.copy_stream(open(url), f)
    p 'finshed'
  end
end
x = ARGV[0]
y = ARGV[1]
download(x,y)