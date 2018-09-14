json.extract! publicacion, :id, :titulo, :ciudad, :tipo, :texto, :autor, :fecha, :puntaje, :created_at, :updated_at
json.url publicacion_url(publicacion, format: :json)
