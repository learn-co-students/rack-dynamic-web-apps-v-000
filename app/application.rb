class Application

  def call(env)
    resp = Rack::Response.new

# note K is a capital letter

  num_1 = Kernel.rand(1..20)
  num_2 = Kernel.rand(1..20)
  num_3 = Kernel.rand(1..20)


# the \n indicates it a new line.
  resp.write "#{num_1}\n"
  resp.write "#{num_2}\n"
  resp.write "#{num_3}\n"

  if num_1==num_2 && num_2==num_3
    resp.write "You Win"
  else
    resp.write "You Lose"
  end

  resp.finish  # the app will not run without the finish.
  end
end
