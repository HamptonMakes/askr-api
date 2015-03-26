Rake::Task["assets:precompile"].enhance do
  # Clear cache on deploy
  puts "Clearing the rails memcached cache"
  Rails.cache.clear
end
