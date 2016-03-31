json.cache! candidate do
  json.candidate do
    json.partial! 'v1/candidates/candidate', candidate: candidate
  end
end
