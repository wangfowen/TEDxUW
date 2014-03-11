Tedxuw::Application.routes.draw do
  comfy_route :blog_admin, :path => '/admin'
  comfy_route :blog, :path => '/blog'

  root 'main#index'
  get "/about", to: "main#about"
  get "/organization", to: "main#organization"
  get "/partners", to: "main#partners"
  get "/speakers", to: "main#speakers"
  get "/videos", to: "main#videos"
  get "/team", to: "main#team"
  get "/contact", to: "main#contact"
	get '/', to: 'main#live', constraints: { subdomain: 'live' } 
	get '/', to: 'main#live', constraints: { subdomain: 'livestream' } 
	get '/live', to: 'main#live'

  comfy_route :cms_admin, :path => '/admin'

  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false
end
