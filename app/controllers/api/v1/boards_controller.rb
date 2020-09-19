module Api
  module V1
    class BoardsController < ApplicationController

      def show
        @board = Board.find(params[:id])

        render json: { status: "SUCCESS", message: "Board state loaded", data: @board }, status: :ok
      end

      def create
        @board = Board.new(board_params)

        if @board.save
          render json: { status: "SUCCESS", message: "Board state loaded", data: @board }, status: :ok
        else
          render json: { status: "ERROR", message: "There was an issue creating this board", data: @board.errors }, status: :unprocessable_entity
        end
      end

      private

      def board_params
        params.require(:board).permit(:state)
      end

    end
  end
end
