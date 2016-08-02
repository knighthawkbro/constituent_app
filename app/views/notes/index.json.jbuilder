json.array!(@notes) do |note|
  json.extract! note, :id, :note, :constituent_id, :cca
  json.url note_url(note, format: :json)
end
