module PageDisplay
  def page_display(parks)
    if params[:page]
      parks.paginate(page: params[:page], per_page: 20)
      json_response(parks)
    else
      json_response(parks)
    end
  end
end