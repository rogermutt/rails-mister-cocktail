Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  delete 'cocktails/:id', to: 'cocktails#destroy', as: 'delete_cocktail'

  get 'top', to: 'cocktails#top', as: 'top'

  resources :cocktails, except: [:destroy] do
    resources :doses, only: %i[new create destroy]
  end

end


