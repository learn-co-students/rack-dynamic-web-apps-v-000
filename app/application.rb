class Application

  def call(env)
    resp = Rack::Response.new
  #   resp.write "Hello, World"
  #   resp.finish
  # end

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "        ____       \n"
    resp.write "       /    \\     \n"
    resp.write " _/===============\\_\n"
    resp.write "|___________________|\n"
    resp.write "*-------------------*\n"
    resp.write "||  #{num_1} |  #{num_2}  | #{num_3}  ||\n"
    resp.write "*-------------------*\n"
    resp.write "|    S L O T S !    |\n"
    resp.write "|               []  |\n"
    resp.write "|              ---- |\n"
    resp.write "|___________________|\n"
    resp.write "\n"

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
  resp.finish
  end
end
