view: user_assignments {
  sql_table_name: DemoUserReports.UserAssignments ;;

  dimension: assignment_count {
    type: number
    sql: ${TABLE}.AssignmentCount ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}.UserName ;;
  }

  measure: count {
    type: count
    drill_fields: [user_name]
  }
  measure: total_assignments {
    type: sum
    sql: ${assignment_count};;
  }
}
