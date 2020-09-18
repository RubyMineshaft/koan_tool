module Api
  module V1
    class BoardsController < ApplicationController

      def show
        @board = Board.find(params[:id])
      end

      def create
        @board = Board.new(board_params)
      end

      private

      def board_params
        params.require(:board).permit(:state)
      end

    end
  end
end
