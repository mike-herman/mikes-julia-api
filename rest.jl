#= This will return a JSON. =#
# using Genie, Genie.Requests
# import Genie.Renderer.Json: json

# Genie.config.run_as_server = true

# route("/") do
#     (:message => "Hi there!") |> json
# end

#= This will return dynamic content. =#
# using Genie, Genie.Renderer.Json, Genie.Requests
# using HTTP
# route("/customers/:customer_id/orders/:order_id") do
#     "You asked for the order $(payload(:order_id)) for customer $(payload(:customer_id))"
# end

#= Accepting JSON paylods =#
using Genie, Genie.Renderer.Json, Genie.Requests
using HTTP

route("/echo", method = POST) do
  message = jsonpayload()
  (:echo => (message["message"] * " ") ^ message["repeat"]) |> json
end

route("/send") do
  response = HTTP.request("POST", "http://127.0.0.1:8000/echo", [("Content-Type", "application/json")], """{"message":"hello", "repeat":3}""")

  response.body |> String |> json
end

up(async = false)





