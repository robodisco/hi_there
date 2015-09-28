HiThere::Engine.routes.draw do
  resources :courses, except: :destroy do
    member do 
      put :open
      put :close
    end
    resources :emails, except: :destroy
  end

  resources :subscriptions, only: [:new, :create]

  get 'confirmation_required' => 'subscriptions#confirmation_required'
  get 'confirmed' => 'subscriptions#confirmed', as: 'confirmed_subscription'
  get 'confirm/:token' => 'subscriptions#confirm', as: 'confirm_subscription'
end
