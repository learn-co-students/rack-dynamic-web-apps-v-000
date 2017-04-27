require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new

    slots_arr = []
    3.times do
      slots_arr << Kernel.rand(1..20)
    end

    slots_arr.each {|num| resp.write "#{num}\n"}

    if slots_arr[0] == slots_arr[1] && slots_arr[1] == slots_arr[2]
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
