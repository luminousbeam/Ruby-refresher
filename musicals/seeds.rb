require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :database => "musicals"
)

class Musical < ActiveRecord::Base
end

Musical.create([
  {title: "Cats", year: 1989, composer: "Kitty Malone", lyricist: "Susan Boyle"},
  {title: "Highschool", year: 2000, composer: "Hans Zimmer", lyricist: "Selena Gomez"}
])
