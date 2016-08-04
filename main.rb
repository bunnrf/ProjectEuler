
files = Dir["lib/*.rb"].sort
files.each {|file| require "./#{file}" }

def time(fun, input = nil)
    t = Time.now
    if input
        ans = fun.call(input)
    else
        ans = fun.call
    end
    t = Time.now - t
    puts "#{fun.name}(#{input}): " + ' ' * (32 - fun.name.length - ans.to_s.length) + "#{ans} in #{t}s"
    ans
end

files[0..-2].each do |filename|
    print filename[4..5] + " "
    time( method( filename[7..-4].to_sym ) )
end
