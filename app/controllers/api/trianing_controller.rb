
module Api
  class TrianingController < ApplicationController

    def index
      trianing = Trianing.order('created_at DESC')
      render json: {status: 'SUCCESS', message: 'Loaded training', data:trianing},status: :ok
    end

    def show
      trianing = Trianing.find(params[:id])
      render json: {status: 'SUCCESS', message: 'Loaded training', data:trianing},status: :ok
    end

    def create
      trianing = Trianing.new(trianing_params)

      if trianing.save
        render json: {status: 'SUCCESS', message: 'training saved', data:trianing},status: :ok
      else
        render json: {status: 'ERROR', message: 'training not saved', data:trianing.errors},status: :unprocessable_entity
      end
    end

    def destroy
      trianing = Trianing.find(params[:id])
      trianing.destroy
      render json: {status: 'SUCCESS', message: ' deleted training', data:trianing},status: :ok
    end

    def complete
      trianing = Trianing.find(params[:id])

      if procedure.update_attribute('status','complete')
        render json: {status: 'SUCCESS', message: 'training Updated', data:trianing},status: :ok
      else
        render json: {status: 'ERROR', message: 'training not updated', data:trianing},status: :ok
      end
    end

    def trianing_params
      params.permit(:email, :procedure, :status , :proid)
    end
  end
end