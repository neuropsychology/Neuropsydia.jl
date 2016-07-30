# Pkg.add("Bootstrap")
# import Bootstrap

"""
**Arguments**
* `var1::Array`: One variable
* `var2::Array`: Another variable
**Keyword Arguments**
* `n_samples::Integer`: Number of samples to generate
**Returns**
Object of class `Result`
**Examples**
```julia
x = [3,2,1,1,2]
y = [4,6,2,4,4]
t_test(x, y)
```
"""
function t_test(var1::Array, var2::Array; n_samples=10000)
    d_obs = mean(var1) - mean(var2)
    d_list = []
    population = [var1; var2]

    for i in 1:n_samples
        shuffle!(population)
        resampled1 = population[1:length(var1)]
        resampled2 = population[length(var2):length(population)]
        mean(resampled1) - mean(resampled2)
        push!(d_list, mean(resampled1) - mean(resampled2))
    end

    sort!(d_list)
    # ci = Bootstrap.ci(d_list, 0.95)

    percentage = length(filter(x -> x > d_obs, d_list))/n_samples
    if percentage > 0.5
        p = (1-percentage)
    else
        p = percentage
    end

    if p >= 0.0001
        @printf("p = %.4f", p)
    else
        @printf("p < 0.0001")
    end

end
