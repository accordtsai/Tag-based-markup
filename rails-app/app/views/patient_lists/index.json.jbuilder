json.array!(@patient_lists) do |patient_list|
  json.extract! patient_list, :id, :name, :content
  json.url patient_list_url(patient_list, format: :json)
end
