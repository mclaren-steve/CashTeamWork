view: operation_action_count_v {
  sql_table_name: DemoUserReports.OperationActionCountV ;;

  dimension: action {
    type: string
    sql: ${TABLE}.Action ;;
  }

  dimension: action_count {
    type: number
    sql: ${TABLE}.ActionCount ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_action_count {
    type: sum
    sql: ${action_count};;
  }

}
