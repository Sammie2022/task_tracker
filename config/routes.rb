Rails.application.routes.draw do
  resources :projects do
    resources :issues do
      collection do
        get :export_excel
        get :export_pdf
      end
    end
  end

  get "up", to: "rails/health#show", as: :rails_health_check

  # Main reports index page
  get "reports", to: "reports#index", as: :reports

  # Separate route for charts visualization
  get "reports/charts", to: "reports#charts", as: :reports_charts

  root "projects#index"
end
