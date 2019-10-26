Dado("que {string} é uma nova task") do |task_code|
    file = YAML.load_file(File.join(Dir.pwd, 'features/support/fixtures/tasks.yaml'))
    @task = file[task_code]
end

Quando("eu faço o cadastro desta task") do
    @home_page.go_Mytasks
    @task_page.add
    @task_page.create(@task)
end

Então("devo ver a nova task na lista") do
    expect(page).to have_text ('The task has been added, pretty simple!')

end

