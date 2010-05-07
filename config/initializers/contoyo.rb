Contoyo.configure do |config|
  # config.add_content_type

  config.layouts.merge! 'application' => {
          :name => 'Application layout with sidebar',
          :containers => ['sidebar']
        }
end
