class LoginPage
    include Capybara::DSL

    def go
        visit "/"
    end

    def open_login_form
        find('.right', text:'Sign in').click
    end
    
    def with(email, pass)
        find('input[name="login"]').set email
        find('input[name="password"]').set pass
        find('#signinbox .btn-flat').click
    end
end 

