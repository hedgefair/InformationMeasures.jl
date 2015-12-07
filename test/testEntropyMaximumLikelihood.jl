d = 1
n = 100
arr = rand(d, n)

# Check entropy is log_base(b) for uniform distribution with b bins
b = sqrt(n) # discretizecounts function uses sqrt(n) bins
@test_approx_eq_eps entropymaximumlikelihood(arr) log2(b) 0.5
@test_approx_eq_eps entropymaximumlikelihood(arr, e) log(b) 0.5

println("Maximum likelihood passed")
