view: transaction_payments {
  sql_table_name: operaciones.transaction_payments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: payment_fee_value {
    type: number
    sql: ${TABLE}.payment_fee_value ;;
  }
  dimension: payment_scheduled_fee_value {
    type: number
    sql: ${TABLE}.payment_scheduled_fee_value ;;
  }
  dimension: payment_unscheduled_fee_value {
    type: number
    sql: ${TABLE}.payment_unscheduled_fee_value ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: transaction_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.transaction_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, transactions.id, users.id, users.name, users.username]
  }
}
