Rails.application.routes.draw do
  resources :candidates, controller: "candidates/candidates" do
    resources :answers, controller: "candidates/answers" do
      resources :ratings, controller: "candidates/answer_ratings"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
