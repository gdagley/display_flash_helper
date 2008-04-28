module DisplayFlashHelper
  def display_flash
    flash_types = [:error, :warning, :notice ]

    (flash_types & flash.keys).collect do |key|
      content_tag(:div, flash[key], :id => "flash", :class => "flash #{key}")
    end.join("\n")
  end
end