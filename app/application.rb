class Application
 
def call(env)
    resp = Rack::Response.new
    do_stuff.each {|key, value| resp.write "#{value}!"}
    resp.finish
end

def do_stuff
    resp = {
    :num_1  => Kernel.rand(1..20),
    :num_2 => Kernel.rand(1..20),
    :num_3 => Kernel.rand(1..20)
    }
    if resp[:num_1] == resp[:num_2] && resp[:num_2]==resp[:num_3]
    resp[:message] =  "\nYou Win"
    else
    resp[:message] =  "\nYou Lose"
    end
  
resp
end


 
end