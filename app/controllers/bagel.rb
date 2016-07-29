get '/bagel' do

  @bagels = Bagel.all
  @toppings = Topping.all
  @spreads = Spread.all

  @finished_bagel = Bagel_Configuration.new(user_id: current_user.id)
  @finished_bagel.bagel = @bagels.sample
  @finished_bagel.spread = @spreads.sample

  rand(4) + 1.times { Bagel_Configuration_Topping.new(bagel_id: @finished_bagel.id, topping_id: @toppings.sample.id) }

  if @finished_bagel.save
    erb :'bagel'
  else
    halt(404, "404!!!!!! Bagel not found")
  end
end