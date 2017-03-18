# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
Tag.destroy_all
tag1 = Tag.create(name: "Stary Kraków")
#tag2 = Tag.create(name: "Nowoczesny Kraków")
#tag3 = Tag.create(name: "Ekstrawagancki Kraków")
puts "Tags created"

Location.destroy_all
Location.create(name: "Rynek Glowny", description: "Rynek Główny w Krakowie miejsce, oznaczonym numerem 1 dla wszystkich, którzy po raz pierwszy przyjeżdżają do Krakowa. Ale nawet jeśli byłeś w Krakowie wielokrotnie, obowiązkowo będziesz chciał przespacerować się po krakowski rynku. Atmosfera na rynku jest wyjątkowa. Znajdziesz tu znane na całą Polskę Sukiennice, kościół Mariacki, wieżę ratuszową, kościół św. Wojciecha i liczne zabytkowe kamienice", tags: [tag1])
Location.create(name: "Sukiennice", description: "Sukiennice w Krakowie w przeszłości spełniały funkcje handlowe i nie inaczej jest dzisiaj. Znajdują się tutaj stragany z biżuterią, rękodziełem i pamiątkami. Piętro Sukiennic zajmują wystawy Galerii Polskiego Malarstwa i Rzeźby XIX wieku.", tags: [tag1])
Location.create(name: "Zamek Królewski", description: "Zamek Królewski na Wawelu leży na Wzgórzu Wawelskim przy lewym brzegu Wisły. Ta siedziba wielu władców znalazł się na Liście Światowego Dziedzictwa Kulturowego UNESCO. Warto także zajrzeć do Smoczej Jamy, w której niegdyś podobno żył smok.", tags: [tag1])
Location.create(name: "Barbakan", description: "Barbakan zwany też potocznie Rondlem to potężna budowla, o niezwykle oryginalnej konstrukcji, najbardziej wysunięta na północ część fortyfikacji miejskich w Krakowie. Aż do końca XVIII w. Barbakan był obiektem nie do zdobycia. Obecnie barbakan jest oddziałem Muzeum Historycznego Miasta Krakowa.", tags: [tag1])
puts "Locations created"
