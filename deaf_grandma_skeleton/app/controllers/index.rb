get '/' do
  @abuelita = params[:abuelita]
  
  erb :index
  # Visita app/views/index.erb
end


post '/abuelita' do
  user_input = params[:user_input]

  puts "Usuario ingreso: #{user_input}"

  if user_input =~ /[a-z]/
    @abuelita = "HUH?! NO TE ESCUCHO, HIJO!"
  elsif user_input == "BYE TQM"
    @abuelita = "BYE"
  elsif user_input =~ /[A-Z]/
    @abuelita = "NO, NO DESDE 1983"
  end

  redirect to('/?abuelita=' + @abuelita)
end

