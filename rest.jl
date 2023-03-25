using Genie, Genie.Requests

include("cpi.jl")

route("/cpi") do
    # Get the parameter payload.
    param_dict = getpayload()
    
    # Run and return the output.
    get_cpi(param_dict)
end

up(async = false)