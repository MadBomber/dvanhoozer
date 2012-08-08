# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'rack' do
  watch('Gemfile.lock')
  watch('app.rb')
  watch('config.ru')
  watch(%r{^(config|lib|app|views|public)/.*})
end

