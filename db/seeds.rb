Goal.delete_all

titles = %w[Learn_ruby Ruby_on_Rails PragProg ChadFauler DHH Rails6 Rails7 Turbo_Rails Stimulus Javascript Saas_bootstrap Learn_Grape]

20.times do |i|
    rand_date = (DateTime.now + (rand * 21)).strftime("%Y-%m-%d")
    Goal.create!(title: titles.sample, descr: "Blablalb lldfgll dlfgldfgl ldfgdlfgld
        fgl dlfgld flgdl gldfgldfgdlfg ldfgdfg.dfg kdfgd gdfgdlfgj ldfkgj lkjdfg.g dflgjk dflgjk dflgdfg
        \n kdfgjh dfkh dfkjgh kdfgdfgdfg ldfkg dlfkgj ldfg. kdjfgh kdfjgh kdjg kdjfgdfg\n", priority: rand(0..2),
     due_date: rand_date, completed: rand(0..1).zero?)
end