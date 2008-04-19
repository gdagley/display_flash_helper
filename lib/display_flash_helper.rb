module DisplayFlashHelper
  def display_flash
    flash_types = [:error, :warning, :notice ]

    flash_type = flash_types.detect{ |a| flash.keys.include?(a) }

    flash_type ? content_tag(:div, flash[flash_type], :id => "flash", :class => "flash #{flash_type.to_s}") : ""
  end
end