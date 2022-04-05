Rails.application.routes.draw do
    get 'welcome/hello'
    get 'welcome/about'

    resources :goals
    patch '/goals/:id/complete', to: 'goals#complete', as: :goal_complete

    root 'welcome#hello'

    mount Goals::API => '/'
end
