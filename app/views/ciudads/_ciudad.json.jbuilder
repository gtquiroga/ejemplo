json.extract! ciudad, :id, :nombre, :descripcion, :pais, :created_at, :updated_at
json.url ciudad_url(ciudad, format: :json)
