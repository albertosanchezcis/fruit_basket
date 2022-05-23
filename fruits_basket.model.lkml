# I add a connection, because it is mandatory but it could be any connection
connection: "looker_partner_demo"

include: "/fruit_basket.view.lkml"


datagroup: permanent {
  sql_trigger: select 1 ;;
}

explore: fruit_basket {}
