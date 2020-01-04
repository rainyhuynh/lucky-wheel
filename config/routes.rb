Rails.application.routes.draw do
  root to: "home#index"

  get :result, to: "home#result", as: :result
  delete :destroys, to: "home#destroys", as: :destroys
  post :update_number_of_option, to: "home#update_number_of_option", as: :update_number_of_option
end
