module Api
  module V1
    class BoardsController < ApplicationController

      def show
        @board = Board.find()
      end

    end
  end
end
