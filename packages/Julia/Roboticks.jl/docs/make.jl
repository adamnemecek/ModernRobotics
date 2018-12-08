using Documenter, Roboticks

makedocs(modules = [Roboticks], sitename = "Roboticks.jl")

deploydocs(
    repo = "github.com/adamnemecek/Roboticks.jl.git",
)
