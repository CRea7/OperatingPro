module Api
    class ProceduresController < ApplicationController

      def index
        procedures = Procedure.order('created_at DESC')
        render json: {status: 'SUCCESS', message: 'Loaded Procedures', data:procedures},status: :ok
      end

      def show
        procedure = Procedure.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded Procedure', data:procedure},status: :ok
      end

      def create
        procedure = Procedure.new(procedure_params)

        if procedure.save
          render json: {status: 'SUCCESS', message: 'procedure saved', data:procedure},status: :ok
        else
          render json: {status: 'ERROR', message: 'procedure not saved', data:procedure.errors},status: :unprocessable_entity
        end
      end

      def destroy
        procedure = Procedure.find(params[:id])
        procedure.destroy
        render json: {status: 'SUCCESS', message: ' deleted procedure', data:procedure},status: :ok
      end

      def update
        procedure = Procedure.find(params[:id])
        if procedure.update_attributes(procedure_params)
          render json: {status: 'SUCCESS', message: 'procedure Updated', data:procedure},status: :ok
        else
          render json: {status: 'ERROR', message: 'Procedure not updated', data:procedure},status: :ok
        end
      end

      def current
        procedure = Procedure.find(params[:id])

        if procedure.update_attribute('status','current')
          render json: {status: 'SUCCESS', message: 'procedure Updated', data:procedure},status: :ok
        else
          render json: {status: 'ERROR', message: 'Procedure not updated', data:procedure},status: :ok
        end
      end

      def awaiting
        procedure = Procedure.find(params[:id])

        if procedure.update_attribute('status','awaiting approval')
          render json: {status: 'SUCCESS', message: 'procedure Updated', data:procedure},status: :ok
        else
          render json: {status: 'ERROR', message: 'Procedure not updated', data:procedure},status: :ok
        end
      end

      def draft
        procedure = Procedure.find(params[:id])

        if procedure.update_attribute('status','draft')
          render json: {status: 'SUCCESS', message: 'procedure Updated', data:procedure},status: :ok
        else
          render json: {status: 'ERROR', message: 'Procedure not updated', data:procedure},status: :ok
        end
      end

      def archive
        procedure = Procedure.find(params[:id])

        if procedure.update_attribute('status','archive')
          render json: {status: 'SUCCESS', message: 'procedure Updated', data:procedure},status: :ok
        else
          render json: {status: 'ERROR', message: 'Procedure not updated', data:procedure},status: :ok
        end
      end
      private

      def procedure_params
        params.permit(:title, :revnum, :status ,:department, :content ,:creator, :file)
      end
  end
end