class Application

  def call(env)
    # can code response direcctly as a hash
    resp = Rack::Response.new
    
    num_1 = Kernel.rand(1..10)
    num_2 = Kernel.rand(1..10)
    num_3 = Kernel.rand(1..10)

    resp.write("#{num_1}\n")
    resp.write("#{num_2}\n")
    resp.write("#{num_3}\n")

    if num_1 == num_2 && num_2 == num_3
      resp.write "You win!"
    else
      resp.write "You Lose!!!" 
    end

    resp.finish
  end

end
