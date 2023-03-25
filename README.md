# mikes-julia-api
A basic API backend in Julia.

This is basically a wrap-around the existing API package `FredData`. (https://juliahub.com/ui/Packages/FredData/SEoaS/0.6.0). This requires a FRED API key to be added as a system environment variable. See package details.

The endpoint for this API is called `cpi` and it takes two parameters, `start_date` and `end_date`. It will return the U.S. CPI between the dates specified.

There are two files:
- `cpi.jl`: This contains the function for getting the cpi.
- `rest.jl`: This contains the functions for the server.

## Example

    https://localhost:8000/cpi?start_date=2021-01-01&end_date=2022-12-01

