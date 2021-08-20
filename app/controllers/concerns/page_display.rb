module PageDisplay
  def page_display(parks)
    if params[:page].class == String
      park_page = parks.paginate(page: params[:page].to_i, per_page: 20)
      json_response(park_page)
    else
      json_response(parks)
    end
  end
end