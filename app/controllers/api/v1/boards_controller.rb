module Api
  module V1
    class BoardsController < ApplicationController

      def show
        @board = Board.find(params[:id])
      end

    end
  end
end
