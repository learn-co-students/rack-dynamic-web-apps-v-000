class Application

  def call(env)
    resp = Rack::Response.new
    
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)
    
    if num_1==num_2 && num_2==num_3
      score =  "You Win"
    else
      score =  "You Lose"
    end

    resp.write score
    resp.finish
  end

end
