class Api < Grape::API
  include PadrinoGrape

  format :json
  formatter :json, Grape::Formatter::Rabl

  helpers do
    params :company do
      requires :name,    type: String, allow_blank: false
      requires :address, type: String, allow_blank: false
      requires :city,    type: String, allow_blank: false
      requires :country, type: String, allow_blank: false

      optional :email,   type: String, allow_blank: true
      optional :phone,   type: String, allow_blank: true
    end
  end
end
