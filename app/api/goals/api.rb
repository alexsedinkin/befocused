module Goals
    class APIv1 < Grape::API
        version 'v1', using: :header, vendor: 'befocused'
        format :json
        prefix :api

        resource :goals do
            desc 'Return all Goals'
            get do
                present Goal.all
            end
        end
    end

    class APIv2 < Grape::API
        version 'v1', using: :header, vendor: 'befocused'
        format :json
        prefix :api

        resource :goals do
            desc 'Return all Goals'
            get do
                present Goal.all
            end
        end
    end

    class API < Grape::API
        mount Goals::APIv1 => '/v1'
        mount Goals::APIv1 => '/v2'
    end
end