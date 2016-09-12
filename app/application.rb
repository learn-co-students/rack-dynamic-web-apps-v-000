class Application

  def call(env)
    resp = Rack::Response.new
    resp.write "Welcome to FABULOUS Las Vegas!\n"
    slots = slotmachine.join(", ")
    resp.write slots
    resp.write "\n"
    if slots[0] == slots[1] && slots[1] == slots [2]
      resp.write "You Win!\n"
    else
      resp.write "You Lose\n"
    end
    resp.write "Goodbye, and Good Luck! We hope You Win!"
    resp.finish
  end

  def slotmachine
    slot = [rand(1..7), rand(1..7), rand(1..7)]
  end



end
