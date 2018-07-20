# Avoid CORS issues when API is called from the front end app
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    
    resource '*', 
      headers: :any, 
      methods: [:get, :post, :options]
  end
end