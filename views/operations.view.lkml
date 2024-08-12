view: operations {
  sql_table_name: operaciones.operations ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: compliance_insurance {
    type: number
    sql: ${TABLE}.compliance_insurance ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: delay_quotas_number {
    type: number
    sql: ${TABLE}.delay_quotas_number ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension_group: disbursement {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.disbursement_date ;;
  }
  dimension: document_id {
    type: string
    sql: ${TABLE}.document_id ;;
  }
  dimension: fee_value {
    type: number
    sql: ${TABLE}.fee_value ;;
  }
  dimension: fiduciary_contract_number {
    type: string
    sql: ${TABLE}.fiduciary_contract_number ;;
  }
  dimension: fpp {
    type: number
    sql: ${TABLE}.fpp ;;
  }
  dimension: initial_payment {
    type: number
    sql: ${TABLE}.initial_payment ;;
  }
  dimension: interest_rate {
    type: number
    sql: ${TABLE}.interest_rate ;;
  }
  dimension: life_insurance {
    type: number
    sql: ${TABLE}.life_insurance ;;
  }
  dimension: max_bullet {
    type: number
    sql: ${TABLE}.max_bullet ;;
  }
  dimension: mortgage_value {
    type: number
    sql: ${TABLE}.mortgage_value ;;
  }
  dimension: operation_number {
    type: string
    sql: ${TABLE}.operation_number ;;
  }
  dimension: operation_term {
    type: number
    sql: ${TABLE}.operation_term ;;
  }
  dimension: operation_value {
    type: number
    sql: ${TABLE}.operation_value ;;
  }
  dimension: outstanding_balance {
    type: number
    sql: ${TABLE}.outstanding_balance ;;
  }
  dimension: property_insurance {
    type: number
    sql: ${TABLE}.property_insurance ;;
  }
  dimension: released_percentage {
    type: number
    sql: ${TABLE}.released_percentage ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: structuration {
    type: number
    sql: ${TABLE}.structuration ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, buildings.count, operation_histories.count, operation_users.count, transactions.count]
  }
}
