Rails.application.routes.draw do
    get 'welcome/hello'
    get 'welcome/about'

    resources :goals
    patch '/goals/:id/complete', to: 'goals#complete', as: :goal_complete

    root 'welcome#hello'

    # API
    mount Goals::API => '/'

    resources :users, only: [] do
        collection do
            post 'import'
        end
    end
end
