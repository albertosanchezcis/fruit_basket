connection: "looker_partner_demo"

include: "/fruit_basket.view.lkml"                # include all views in the views/ folder in this project

datagroup: permanent {
  sql_trigger: select 1 ;;
}

explore: fruit_basket {}
