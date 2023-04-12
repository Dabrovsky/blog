# Używamy oficjalnego obrazu Ruby, wersja 3.0.3
FROM ruby:3.2.0

# Ustalamy katalog roboczy jako /app
WORKDIR /app

# Kopiujemy plik Gemfile do katalogu /app w kontenerze
COPY Gemfile Gemfile.lock ./

# Instalujemy zależności
RUN bundle install

# Kopiujemy resztę plików aplikacji do katalogu /app w kontenerze
COPY . .

# Ustawiamy port, na którym nasza aplikacja będzie działać (domyślnie 3000)
EXPOSE 3000

# Uruchamiamy serwer Rails na porcie 3000 w kontenerze
CMD ["rails", "server", "-b", "0.0.0.0"]
