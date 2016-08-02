json.array!(@constituents) do |constituent|
  json.extract! constituent, :id, :member_name, :issue, :status, :contact_info, :psi, :contact_id, :assigned_to
  json.url constituent_url(constituent, format: :json)
end
