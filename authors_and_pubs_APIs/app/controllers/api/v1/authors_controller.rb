class Api::V1::AuthorsController < ApplicationController
    def index
        render json: Author::IndexSerializer.new(Author.all).serialized_json, status: :ok
    end
    def show 
        render json: Author::ShowSerializer.new(set_author).serialized_json, status: :ok
    end
    private
    def set_author
        @author ||= Author.find params[:id]
    end

end
