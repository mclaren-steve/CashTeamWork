view: active_user_session_v {
  sql_table_name: DemoUserReports.ActiveUserSessionV ;;

  dimension: duration {
    type: number
    sql: ${TABLE}.Duration ;;
  }

  dimension_group: login_date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LoginDateTime ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }

  measure: total_duration {
    type: sum
    drill_fields: [duration]
  }
}
