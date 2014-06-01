class HomeScreen < PM::Screen
  title "Jim Carrey"

  def on_load
    @layout = HomeLayout.new(root: self.view)
    @layout.movies_view = movies_screen.view
    @layout.build
  end

  def movies_screen
    @movies_screen ||= begin
      m = MoviesScreen.new
      self.addChildViewController m
      m
    end
  end

end
