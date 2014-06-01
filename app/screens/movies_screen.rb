class MoviesScreen < PM::TableScreen

  def table_data
    [{
      cells: movies.map do |movie|
        {
          title: movie,
          action: :select_movie,
          arguments: { movie: movie }
        }
      end
    }]
  end

  def select_movie(movie)
    self.parent_screen.select_movie(movie)
  end

  def movies
    [
      "High Strung",
      "The Itsy Bitsy Spider",
      "Ace Ventura: Pet Detective",
      "The Mask",
      "Dumb and Dumber",
      "Batman Forever",
      "Ace Ventura: When Nature Calls",
      "The Cable Guy",
      "Liar Liar",
      "The Truman Show",
      "Simon Birch",
      "Man on the Moon",
      "Me, Myself & Irene",
      "How the Grinch Stole Christmas (animated)",
      "The Majestic",
      "Bruce Almighty",
      "Pecan Pie (Short Subject)",
      "Eternal Sunshine of the Spotless Mind",
      "Lemony Snicket's A Series of Unfortunate Events",
      "Fun with Dick and Jane",
      "The Number 23",
      "Horton Hears a Who (animated)",
      "Yes Man",
      "I Love You Phillip Morris",
      "A Christmas Carol",
      "Mr. Popper's Penguins",
      "The Incredible Burt Wonderstone",
      "Kick-Ass 2",
      "Anchorman 2: The Legend Continues",
      "Dumb and Dumber To",
    ]
  end

end
