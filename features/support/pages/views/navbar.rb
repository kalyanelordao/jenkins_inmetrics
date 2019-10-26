class NavBarView
    include Capybara::DSL

    def logged_user
        find('.grey .container .nav-wrapper .right .me').text
    end

end