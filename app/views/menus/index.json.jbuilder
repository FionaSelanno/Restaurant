json.array!(@menus) do |menu|
  json.extract! menu, :id, :menu_name, :menu_discription, :cuisine, :price
  json.url menu_url(menu, format: :json)
end
