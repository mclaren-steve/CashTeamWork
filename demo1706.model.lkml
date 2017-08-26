connection: "demo1706"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: user_actions {}

explore: user_assignments {}

explore: user_session {}

explore:  active_user_session_v {}

explore:   operation_action_count_v {}
