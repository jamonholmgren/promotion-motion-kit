class HomeScreen < PM::Screen
  title "Jim Carrey"

  def on_load
    @layout = HomeLayout.new(root: self.view).build
  end

end
