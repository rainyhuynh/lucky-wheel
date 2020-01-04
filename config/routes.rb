Rails.application.routes.draw do
  root to: "home#index"

  get :result, to: "home#result", as: :result
  delete :destroys, to: "home#destroys", as: :destroys
end
