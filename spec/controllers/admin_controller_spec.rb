require 'spec_helper'
require 'rails_helper'

describe "AdminPages" do
  describe "GET /admin_pages" do
    before do
      admin_user = FactoryGirl.create(:admin_user)
      path = path.singularize
      sign_in_admin
    end

    describe "check all pages:" do
      all_admin_pages = Dir['app/admin/*.rb'].map { |entry| entry[/[^\/]+\.rb/][0..-4] }
      if all_admin_pages.delete('dashboards')
        it 'dashboard' do
          get send("admin_dashboard_path")
          expect(response).to have_http_status(200)
        end
      end
    end
  end
end