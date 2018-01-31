class Application

  def call(env)
    resp = Rack::Response.new
    nums = []
    3.times do |num|
      nums.push(Kernel.rand(1..2))
    end
    if nums[0]==nums[1] && nums[1]==nums[2]
      resp.write "#{nums[0]}, #{nums[1]}, #{nums[2]}"
      resp.write "\nHUZZAH! You Win!"
    else
      resp.write "#{nums[0]}, #{nums[1]}, #{nums[2]}"
      resp.write "\nToo bad. You Lose."
    end
    resp.finish
  end

end
