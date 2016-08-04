Rails.application.routes.draw do
  # resources :zombies
  # resources :zombies, only: :index
  constraints subdomain: 'api' do
	  namespace :api, path: '/' do
	  	resources :zombies, only: [:index, :show]
	  	resources :humans, except: [:destroy, :edit, :update]
	  end
	end
  # Ao usar um namespace, precisamos definir o controller dentro de um
  # module, nesse caso 'module Api'; em uma pasta com o mesmo nome do
  # modulo '/app/controllers/api/zombies_controller.rb'

  # Ao usar um subdominio e um namespace, nossa url ficaria assim:
  # api.meusite.com/api/zombies. Para corrigir isso, passamos um metodo
  # path: '/' para o namespace, dessa forma ela roda no root:
  # api.meusite.com/zombies

  # with_options only: :index do |list|
  # 	list.resources :zombies
  # 	list.resources :humans
  # 	list.resources :medical_kits
  # end

  # resources :zombies, constraints: { subdomain: 'api' }
  # resources :humans, constraints: { subdomain: 'api' }
  # # ou
  # constraints subdomain: 'api' do
  # 	resources :zombies
  # 	resources :humans
  # end

  # # Notas: https://gist.github.com/viniciusCamargo/be67420b7638685c9f27e213b79ff896

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
