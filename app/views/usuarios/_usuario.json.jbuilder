json.extract! usuario, :id, :nombre, :apellidos, :rut, :email, :password, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
