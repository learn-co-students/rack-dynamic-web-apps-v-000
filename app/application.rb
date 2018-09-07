class Application
 
  def call(env)
    resp = Rack::Response.new
 
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end
#express output to our user. Because this is the web, that means adding it to our response. Instead of puts now we'll use the #write method in our Rack::Response object.