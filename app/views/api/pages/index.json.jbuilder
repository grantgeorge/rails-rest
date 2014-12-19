json.pages @pages do |page|
  json.id    page.id
  json.title page.title

  json.artist_id page.artist ? page.artist.id : nil
end
