view: transactions {
  sql_table_name: operaciones.transactions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: advance_percentage {
    type: number
    sql: ${TABLE}.advance_percentage ;;
  }
  dimension: balance {
    type: number
    sql: ${TABLE}.balance ;;
  }
  dimension: bullet {
    type: number
    sql: ${TABLE}.bullet ;;
  }
  dimension_group: compliance {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.compliance_date ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: debt_payment {
    type: number
    sql: ${TABLE}.debt_payment ;;
  }
  dimension: delay_days {
    type: number
    sql: ${TABLE}.delay_days ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: expected_released_percentage {
    type: number
    sql: ${TABLE}.expected_released_percentage ;;
  }
  dimension: fee_value {
    type: number
    sql: ${TABLE}.fee_value ;;
  }
  dimension: interest {
    type: number
    sql: ${TABLE}.interest ;;
  }
  dimension: monthly_percentage {
    type: number
    sql: ${TABLE}.monthly_percentage ;;
  }
  dimension: operation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.operation_id ;;
  }
  dimension_group: payment {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.payment_date ;;
  }
  dimension: payment_value {
    type: number
    sql: ${TABLE}.payment_value ;;
  }
  dimension: pre_approved_by {
    type: string
    sql: ${TABLE}.pre_approved_by ;;
  }
  dimension: quota_number {
    type: number
    sql: ${TABLE}.quota_number ;;
  }
  dimension: real_scheduled_extra_fee {
    type: number
    sql: ${TABLE}.real_scheduled_extra_fee ;;
  }
  dimension: recovered_percentage {
    type: number
    sql: ${TABLE}.recovered_percentage ;;
  }
  dimension: released_percentage {
    type: number
    sql: ${TABLE}.released_percentage ;;
  }
  dimension: scheduled_balance {
    type: number
    sql: ${TABLE}.scheduled_balance ;;
  }
  dimension: scheduled_debt_payment {
    type: number
    sql: ${TABLE}.scheduled_debt_payment ;;
  }
  dimension: scheduled_extra_fee {
    type: number
    sql: ${TABLE}.scheduled_extra_fee ;;
  }
  dimension: scheduled_fee_value {
    type: number
    sql: ${TABLE}.scheduled_fee_value ;;
  }
  dimension: scheduled_interest {
    type: number
    sql: ${TABLE}.scheduled_interest ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: submitted_by {
    type: string
    sql: ${TABLE}.submitted_by ;;
  }
  dimension: unscheduled_extra_fee {
    type: number
    sql: ${TABLE}.unscheduled_extra_fee ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, operations.id, transaction_news.count, transaction_payments.count]
  }
}
