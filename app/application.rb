class Application

  def call(env)
    resp = Rack::Response.new  ## Creates new Rack::Response object

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)  ## Get three random nums
    num_3 = Kernel.rand(1..20)

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"    ## Doesn't execute until resp.finish called below
    else
      resp.write "You Lose"   ## See above comment
    end

    resp.finish
  end

end
