json.id list.id
json.name list.name
json.user_id list.user_id
json.date list.date

  json.items do
      json.array! list.items, partial: 'api/items/item', as: :item
  end
