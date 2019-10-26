require 'base64'

Before do
    @home_page = HomePage.new
    @login_page = LoginPage.new
    @navbar = NavBarView.new
    @task_page = TaskPage.new

    page.current_window.resize_to(1440,900)
end

Before("@login") do
    @login_page.go
    @login_page.open_login_form
    @login_page.with("testinho@teste.com", "teste123")
end

After do
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot).read)
    embed(screenshot, "image/png", "screenshot")
end
