json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :personal_data, :first_name, :last_name
  json.url patient_url(patient, format: :json)
end
