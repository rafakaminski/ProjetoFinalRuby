namespace :dev do
  desc "Configurar o banco do de dados do zero"
  task db_setup: :environment do
    if Rails.env.development?
    puts %x(rails db:drop:_unsafe)
    puts %x(rails db:creat)
    puts %x(rails db:migrate)
    puts %x(rails db:seed)
  else
    puts "ambiente de produção!"
  end
 end

end