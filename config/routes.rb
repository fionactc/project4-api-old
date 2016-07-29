Rails.application.routes.draw do
  mount_devise_token_auth_for 'Renter', at: 'renter'

  mount_devise_token_auth_for 'Agent', at: 'agent'
  as :agent do
    # Define routes for Agent within this block.
  end

  get '/agents', to: 'statics#agents'
  get '/renters', to: 'statics#renters'
end
