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
tag2 = Tag.create(name: "Spacery")
tag3 = Tag.create(name: "Hipsterski Kraków")
puts "Tags created"

Location.destroy_all
# Stary Kraków
Location.create(name: "Rynek Glówny", latitude: 50.061897, longitude: 19.936756, description: "Rynek Główny w Krakowie miejsce, oznaczonym numerem 1 dla wszystkich, którzy po raz pierwszy przyjeżdżają do Krakowa. Ale nawet jeśli byłeś w Krakowie wielokrotnie, obowiązkowo będziesz chciał przespacerować się po krakowski rynku. Atmosfera na rynku jest wyjątkowa. Znajdziesz tu znane na całą Polskę Sukiennice, kościół Mariacki, wieżę ratuszową, kościół św. Wojciecha i liczne zabytkowe kamienice", tags: [tag1])
Location.create(name: "Sukiennice", latitude: 50.061602, longitude: 19.935137, description: "Sukiennice w Krakowie w przeszłości spełniały funkcje handlowe i nie inaczej jest dzisiaj. Znajdują się tutaj stragany z biżuterią, rękodziełem i pamiątkami. Piętro Sukiennic zajmują wystawy Galerii Polskiego Malarstwa i Rzeźby XIX wieku.", tags: [tag1])
Location.create(name: "Wawel", latitude: 50.053926, longitude: 19.933195, description: "Zamek Królewski na Wawelu leży na Wzgórzu Wawelskim przy lewym brzegu Wisły. Ta siedziba wielu władców znalazł się na Liście Światowego Dziedzictwa Kulturowego UNESCO. Warto także zajrzeć do Smoczej Jamy, w której niegdyś podobno żył smok.", tags: [tag1])
Location.create(name: "Barbakan", latitude: 50.065475, longitude: 19.939467, description: "Barbakan zwany też potocznie Rondlem to potężna budowla, o niezwykle oryginalnej konstrukcji, najbardziej wysunięta na północ część fortyfikacji miejskich w Krakowie. Aż do końca XVIII w. Barbakan był obiektem nie do zdobycia. Obecnie barbakan jest oddziałem Muzeum Historycznego Miasta Krakowa.", tags: [tag1])

# Spacery
Location.create(name: "Planty", latitude: 50.0599171, longitude: 19.9400061, description: "Wyjątkowy ogród miejski, który otacza najstarszą część Krakowa. Planty są równocześnie jednym z większych krakowskich parków. Alejki Plant to wprost wymarzone miejsce odpoczynku dla strudzonego zwiedzaniem turysty.", tags: [tag2])
Location.create(name: "Skałki Twardowskiego", latitude: 50.040035, longitude: 19.912982, description: "Jak głosi legenda wśród okolicznych urwisk mistrz Twardowski prowadził szkołę magii i czarnoksięstwa. Obecnie wapienne skały przyciągają miłośników wspinaczki, a zalew - nurków.", tags: [tag2])
Location.create(name: "Kopiec Krakusa", latitude: 50.038068, longitude: 19.958467, description: "Kopiec znajduje się na prawym brzegu Wisły w dzielnicy Podgórze, usypany na najwyższym wzniesieniu wapiennego zrębu Krzemionek – wzgórzu Lasoty. Świetne miejsce na romantyczny spacer.", tags: [tag2])
Location.create(name: "Kopiec Kościuszki", latitude: 50.054943, longitude: 19.891030, description: "Kopiec Kościuszki to doskonały cel na romantyczny spacer. Tu wciąż czuć magię Krakowa. Ze szczytu można podziwiać piękną panoramę miasta, Beskidu Żywieckiego, a nawet Tatr.", tags: [tag2])
Location.create(name: "Zoo", latitude: 50.053716, longitude: 19.848476, description: "Kopiec Kościuszki to doskonały cel na romantyczny spacer. Tu wciąż czuć magię Krakowa. Ze szczytu można podziwiać piękną panoramę miasta, Beskidu Żywieckiego, a nawet Tatr.", tags: [tag2])

# Hipsterski Kraków
Location.create(name: "Plac Nowy", latitude: 50.051874, longitude: 19.942426, description: "Plac Nowy to jeden z najbardziej oryginalnych placów targowych Polski, a być może i Europy. Cechuje go niepowtarzalna atmosfera zabytkowych budowli z centralnym punktem odniesienia tzw. \"Okrąglakiem\".", tags: [tag3])
Location.create(name: "Forum Przestrzenie", latitude: 50.045305, longitude: 19.933819, description: "Hotel Forum latami stał i straszył, aż pewnego dnia ktoś zabrał się za to miejsce i stworzył najbardziej kultową krakowską knajpę. Miejsce o którym mówi się w całej Polsce. Forum Przestrzenie położone jest nad samą Wisłą z widokiem na Wawel. Widokiem można delektować się leżąc na leżaku, w koszu wiklinowym, na murkach, ławkach lub w środku. Najlepsze jest w tym miejscu to , że można przyjść o każdej porze tygodnia czy weekendu bo zawsze jest fajnie i relaksująco.", tags: [tag3])
Location.create(name: "Dolnych Młynów", latitude: 50.064498, longitude: 19.925197, description: "Na pofabrycznych terenach na Dolnych Młynów stworzono miejsce, którego Kraków potrzebował od lat. Miejsce, gdzie w jednym punkcie są knajpki od śniadania do późnej kolacji, od kawy do drinka, od zmierzchu do świtu. Wszystko nowoczesne, przemyślane i świetnie dobrane.", tags: [tag3])
puts "Locations created"
