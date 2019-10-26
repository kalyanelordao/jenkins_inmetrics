Quando("eu faço login com {string} e {string}") do |email, password|
    @login_page.go
    @login_page.open_login_form
    @login_page.with(email, password)
    sleep 2
end

Então("devo ver o nome {string} na área logada") do |expect_name|
   expect(@navbar.logged_user).to have_text expect_name
end

