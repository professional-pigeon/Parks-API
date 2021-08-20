module SearchLogic
  def search_state_type(state, type)
    if state && type
      parks = Park.state_search(state).type_search(type)
    elsif state
      parks = Park.state_search(state)
    elsif type
      parks = Park.type_search(type)
    else
      parks = Park.all
    end
  end
end