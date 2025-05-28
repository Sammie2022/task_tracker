Rails.application.routes.draw do
  resources :projects do
    resources :issues do
      collection do
        get :export_excel
        get :export_pdf
      end
    end
  end

  get "up" => "rails/health#show", as: :rails_health_check
  
  # Update this line to route 'reports' path to ReportsController#index
  get "reports", to: "reports#index", as: :reports
  get "reports", to: "reports#charts", as: :reports

  root "projects#index"
end
