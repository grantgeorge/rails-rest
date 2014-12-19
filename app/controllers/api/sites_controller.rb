module Api
  class SitesController < Api::BaseController

    private

      def site_params
        params.require(:site).permit(:title, :description, :account_id, :plan_id)
      end

      def query_params
        params.permit(:title, :account_id, :plan_id)
      end

  end
end
