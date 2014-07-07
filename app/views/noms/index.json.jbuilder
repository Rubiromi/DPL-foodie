json.array!(@noms) do |nom|
  json.extract! nom, :id, :name, :delicious
end
