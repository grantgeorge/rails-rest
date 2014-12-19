json.sites @sites do |site|
  json.id           site.id
  json.title        site.title
  json.description  site.description
  json.account_id   site.account_id
  json.plan_id      site.plan_id
end
