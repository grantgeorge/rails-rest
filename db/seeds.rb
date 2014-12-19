# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sites = Site.create([
  { title: 'Test Site 1', description: 'Test Desc 1', account_id: 1, plan_id: 1 },
  { title: 'Test Site 2', description: 'Test Desc 1', account_id: 1, plan_id: 1 }
])

pages = Page.create([
  { title: 'Test Page 1', description: 'Test Page 1', account_id: 1, plan_id: 1, site_id: 1 },
  { title: 'Test Page 2', description: 'Test Page 2', account_id: 1, plan_id: 1, site_id: 1 },
  { title: 'Test Page 3', description: 'Test Page 3', account_id: 1, plan_id: 1, site_id: 1 },
  { title: 'Test Page 4', description: 'Test Page 4', account_id: 1, plan_id: 1, site_id: 2 },
  { title: 'Test Page 5', description: 'Test Page 5', account_id: 1, plan_id: 1, site_id: 2 },
  { title: 'Test Page 6', description: 'Test Page 6', account_id: 1, plan_id: 1, site_id: 2 }
])
