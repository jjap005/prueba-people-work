module Api::V1
    class ApiApplicationController < ApplicationController

        protect_from_forgery with: :exception
    end
end