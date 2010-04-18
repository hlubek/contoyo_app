# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

layout = Contoyo::Layout.create! view: 'layouts/application', container_list: 'sidebar'
page = Contoyo::Page.create! :title => 'Welcome', :layout => layout

Contoyo::TextContent.create! :page => page, :body => 'An example content in the main container'
Contoyo::TextContent.create! :page => page, :container => 'sidebar', :body => 'A sidebar content'
