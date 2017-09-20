class Application

  def call(env)
    resp = Rack::Response.new

    numb1 = Kernel.rand(1..2)
    numb2 = Kernel.rand(1..2)
    numb3 = Kernel.rand(1..2)

    resp.write "#{numb1}\n"
    resp.write "#{numb2}\n"
    resp.write "#{numb3}\n"

      if numb1 == numb2 && numb3
        resp.write "You Win"
      else
        resp.write "You Lose"
      end
    resp.finish
  end

end
