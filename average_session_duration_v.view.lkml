view: average_session_duration_v {
  sql_table_name: DemoUserReports.AverageSessionDurationV ;;

  dimension: average_duration {
    type: number
    sql: ${TABLE}.AverageDuration ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }

  measure: total_average_duration {
    type: sum
    sql: ${average_duration};;
  }

}
