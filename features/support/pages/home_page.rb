class HomePage
    include Capybara::DSL

    def go_Mytasks
        find('.darken-2').click
    end
end 

