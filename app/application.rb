class Application
#=========================================================== 
  def call(env)
    resp = Rack::Response.new
#=========================================================== 
    num_1 = Kernel.rand(1..2)
    num_2 = Kernel.rand(1..2)
    num_3 = Kernel.rand(1..2)
    
    resp.write "-"*13
    resp.write "\n| #{num_1} | #{num_2} | #{num_3} |\n"
    resp.write "-"*13

    if num_1 == num_2 && num_2 == num_3
      resp.write "\nYou Win" 
    else
      resp.write "\n  You Lose"
    end
#===========================================================    
    resp.finish
  end
#=========================================================== 
end