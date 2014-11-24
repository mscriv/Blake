json.array!(@senior_checklists) do |senior_checklist|
  json.extract! senior_checklist, :id, :month
  json.url senior_checklist_url(senior_checklist, format: :json)
end
