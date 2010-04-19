# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

layout = Contoyo::Layout.create! :view => 'layouts/application', :container_list => 'sidebar'

welcome_page = Contoyo::Page.create! :title => 'Welcome', :layout => layout
Contoyo::TextContent.create! :page => welcome_page, :body => 'An example content in the main container.'
Contoyo::TextContent.create! :page => welcome_page, :body => 'A second example content.'
Contoyo::TextContent.create! :page => welcome_page, :container => 'sidebar', :body => 'A sidebar content'

about_us_page = Contoyo::Page.create! :title => 'About us', :layout => layout
Contoyo::TextContent.create! :page => about_us_page, :body => 'Lorem ipsum about us'
Contoyo::TextContent.create! :page => about_us_page, :container => 'sidebar', :body => 'Facts about us'

even_more_about_us_page = Contoyo::Page.create! :title => 'Even more about us', :layout => layout, :parent => about_us_page
Contoyo::TextContent.create! :page => even_more_about_us_page, :body => 'Lorem ipsum even more about us'
Contoyo::TextContent.create! :page => even_more_about_us_page, :container => 'sidebar', :body => 'More facts about us'

something_more_about_us_page = Contoyo::Page.create! :title => 'Something more about us', :layout => layout, :parent => about_us_page
Contoyo::TextContent.create! :page => something_more_about_us_page, :body => 'See something more about us'
Contoyo::TextContent.create! :page => something_more_about_us_page, :container => 'sidebar', :body => 'No more sidebar content here'

contact_page = Contoyo::Page.create! :title => 'Contact', :layout => layout
location_page = Contoyo::Page.create! :title => 'Location', :layout => layout, :parent => contact_page
germany_page = Contoyo::Page.create! :title => 'Germany', :layout => layout, :parent => location_page
international_page = Contoyo::Page.create! :title => 'International', :layout => layout, :parent => location_page
