class Application

  def call(env)

    numOne = Kernel.rand(1..20)
    numTwo = Kernel.rand(1..20)
    numThree = Kernel.rand(1..20)

    resp = Rack::Response.new
    resp.write "#{numOne}\n"
    resp.write "#{numTwo}\n"
    resp.write "#{numThree}\n"

    if numOne == numTwo && numTwo == numThree
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end