module ApplicationHelper
   def bootstrap_class_for(flash_type)
      case flash_type
        when "success"
          "alert-success"   # Green
        when "error"
          "alert-danger"    # Red
        when "alert"
          "alert-warning"   # Yellow
        when "notice"
          "alert-info"      # Blue
        else
          flash_type.to_s
      end
    end

    def sortable(column, title = nil)

      title ||= column.titleize
      css_class = column == sort_column ? "current #{sort_direction}" : nil
      direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
      link_to column, {:sort => column.downcase, :direction => direction}, {:class => css_class}
    end
end


