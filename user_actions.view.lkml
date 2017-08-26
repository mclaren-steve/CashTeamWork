view: user_actions {
  sql_table_name: DemoUserReports.UserActions ;;

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
