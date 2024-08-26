connection: "fasil_aws_database"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: prueba_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: prueba_default_datagroup

explore: alembic_version {}

explore: buildings {
  join: operations {
    type: left_outer
    sql_on: ${buildings.operation_id} = ${operations.id} ;;
    relationship: many_to_one
  }
}

explore: cities {
  join: departments {
    type: left_outer
    sql_on: ${cities.department_id} = ${departments.id} ;;
    relationship: many_to_one
  }
}

explore: countries {}

explore: customers {
  join: users {
    type: left_outer
    sql_on: ${customers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: departments {}

explore: operation_histories {
  join: operations {
    type: left_outer
    sql_on: ${operation_histories.operation_id} = ${operations.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${operation_histories.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: operation_users {
  join: operations {
    type: left_outer
    sql_on: ${operation_users.operation_id} = ${operations.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${operation_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: operations {
#  access_filter: {
#    field: operations.id
#    user_attribute: op_id
#  }
}

explore: parameters {}

explore: permissions {
  join: roles {
    type: left_outer
    sql_on: ${permissions.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: risk_analyzer_traceabilities {}

explore: roles {}

explore: transaction_news {
  join: transactions {
    type: left_outer
    sql_on: ${transaction_news.transaction_id} = ${transactions.id} ;;
    relationship: many_to_one
  }

  join: operations {
    type: left_outer
    sql_on: ${transactions.operation_id} = ${operations.id} ;;
    relationship: many_to_one
  }
}

explore: transaction_payments {
  join: transactions {
    type: left_outer
    sql_on: ${transaction_payments.transaction_id} = ${transactions.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${transaction_payments.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: operations {
    type: left_outer
    sql_on: ${transactions.operation_id} = ${operations.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: transactions {
  join: operations {
    type: left_outer
    sql_on: ${transactions.operation_id} = ${operations.id} ;;
    relationship: many_to_one
  }
}

explore: user_session_codes {
  join: users {
    type: left_outer
    sql_on: ${user_session_codes.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: user_sessions {
  join: users {
    type: left_outer
    sql_on: ${user_sessions.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}

explore: users {
  join: roles {
    type: left_outer
    sql_on: ${users.role_id} = ${roles.id} ;;
    relationship: many_to_one
  }
}
