module Api
  class PagesController < Api::BaseController

    # GET /api/pages
    def index
      plural_resource_name = "@pages"
      resources = resource_class.where(query_params)
                                # .page(page_params[:page])
                                # .per(page_params[:page_size])

      instance_variable_set(plural_resource_name, resources)
      render json: instance_variable_get(plural_resource_name)
    end

    private

      def page_params
        params.require(:page).permit(:site_id, :title, :description, :account_id, :plan_id)
      end

      def query_params
        # this assumes that an page belongs to an site and has an :site_id
        # allowing us to filter by this
        params.permit(:site_id, :title)
      end

  end
end
