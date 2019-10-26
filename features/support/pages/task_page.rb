class TaskPage
    include Capybara::DSL

    def add
        find('button[data-target="addtask"]').click
    end

    def create(task)
        #inserindo titulo
        find('input[name=title]').set task["title"]
        
        #inserindo data
        find('input.datepicker').click
        find('div[class="picker__nav--next"]').click
        find('div[aria-label="15 November, 2019"]').click
        click_button('Ok')
    
        #inserindo hora
        find("input.timepicker").click
        click_button('OK')

        #inserindo sobre
        find('textarea[name=text]').set task["about"]

        #salvando task
        find('a.modal-action').click
    end
end