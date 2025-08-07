class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: {
      message: 'Usuário criado com sucesso',
      user: resource
    }, status: :ok
  end
end
