
schools = File.read('script/load_sites/schools').split

schools.each do |url|
   site = Site.create(url: url)
   site.title = site.get_title
   site.save
end
