class Application

  def call(env)
    resp = Rack::Response.new

    num1 = Math.rand(1..10)
    num2 = Math.rand(1..10)
    num3 = Math.rand(1..10)

    resp.write "Your numbers: #{num1}, #{num2}, #{num3}\n"

    if num1==num2 && num2==num3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
