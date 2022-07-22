json.extract! testresult, :id, :result, :pass, :comment, :testgroup, :case, :created_at, :updated_at
json.url testresult_url(testresult, format: :json)
