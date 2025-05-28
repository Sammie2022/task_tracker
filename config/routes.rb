Rails.application.routes.draw do
  get 'reports/charts'
  resources :projects do
    resources :issues
  end

  get "up" => "rails/health#show", as: :rails_health_check
  get "reports", to: "reports#charts", as: :reports
  root "projects#index"
end
