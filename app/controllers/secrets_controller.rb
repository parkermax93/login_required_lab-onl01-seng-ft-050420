class SecretsController < ApplicationController
    before_action :logged_in?

    def show
    end

    private

    def logged_in?
        if !current_user
            redirect_to new_session_path, alert: "Must be logged in."
        end
    end
end