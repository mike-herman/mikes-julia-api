using FredData
using Dates
using JSONTables

FRED_API_KEY = "22f72fa5d2cc78e3da04b46d10f7dd78"

function get_cpi(date_string_dict)

    f = Fred()
    cpi = get_data(f, "CPIAUCSL", observation_start = date_string_dict[:start_date], observation_end = date_string_dict[:end_date])
    cpi_json = objecttable(cpi.data)
    return cpi_json

end
