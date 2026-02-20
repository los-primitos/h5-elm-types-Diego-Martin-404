module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


type AirplaneStatus
    = Cancelled
    | Delayed
    | OnTime
    | Boarding


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\n ->
            if n >= 7 then
                Approved

            else if n >= 0 then
                Failed

            else
                Pending
        )
        grades


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map airplaneScheduleAction list
