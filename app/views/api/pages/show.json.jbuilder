json.page do
  json.id           @page.id
  json.title        @page.title
  json.description  @page.description
  json.account_id   @page.account_id
  json.plan_id      @page.plan_id

  json.site_id @page.site ? @page.site.id : nil
end
