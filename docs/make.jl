using Documenter, Neuropsydia

makedocs(modules=[Neuropsydia],
        doctest=true)

deploydocs(deps   = Deps.pip("mkdocs", "python-markdown-math"),
    repo = "github.com/neuropsychology/Neuropsydia.git")
