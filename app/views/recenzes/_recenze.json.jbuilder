json.extract! recenze, :id, :name, :description, :hodnoceni, :created_at, :updated_at
json.url recenze_url(recenze, format: :json)
