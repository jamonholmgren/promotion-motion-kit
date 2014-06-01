class HomeLayout < MK::Layout

  def layout
    root :home do
      add UIImageView, :profile_image
    end
  end

  def home_style
    background_color "#F9F9F9".uicolor
  end

  def profile_image_style
    image "jimcarrey".uiimage
    clips_to_bounds true
    layer do
      corner_radius 50.0
    end
    constraints do
      left 20
      top 84
      width 100
      height 100
    end
  end

end
