class Application

  def call(env)
    resp = Rack::Response.new
		num1 = Kernel.rand(1..2)
		num2 = Kernel.rand(1..2)
		num3 = Kernel.rand(1..2)
		resp.write "#{num1}\n#{num2}\n#{num3}\n"
		won = (num1==num2 && num2==num3)
    resp.write "You " + (won ? "Win" : "Lose")
    resp.finish
  end

end
