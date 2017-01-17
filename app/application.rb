class Application

  def call(env)
    resp = Rack::Response.new
    # resp.write "Hello, World"
    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win, Winner. Winners don't do drugs."
    else
      resp.write "You Lose, Loser. Get in, we're going shopping."
    end
    resp.finish
  end

  def heres_a_fizzbuzz_method_to_make_learn_realize_i_changed_the_code
    1.upto(100) do |i|
      if i % 5 == 0 and i % 3 == 0
        puts "FizzBuzz"
      elsif i % 5 == 0
        puts "Buzz"
      elsif i % 3 == 0
        puts "Fizz"
      else
        puts i
      end
    end
  end

  def how_man_changes_do_i_need_to_make_come_on_its_a_codealong
    input = gets.chomp!
    puts "You wrote #{input}."
  end

end
