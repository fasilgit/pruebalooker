view: risk_analyzer_traceabilities {
  sql_table_name: operaciones.risk_analyzer_traceabilities ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: average_revolving_portfolio_utilization {
    type: number
    sql: ${TABLE}.average_revolving_portfolio_utilization ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: criteria {
    type: string
    sql: ${TABLE}.criteria ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: identification_number {
    type: string
    sql: ${TABLE}.identification_number ;;
  }
  dimension: maximum_arrears_facility_portfolio {
    type: number
    sql: ${TABLE}.maximum_arrears_facility_portfolio ;;
  }
  dimension: maximum_arrears_last_48_months_total_portfolio {
    type: number
    sql: ${TABLE}.maximum_arrears_last_48_months_total_portfolio ;;
  }
  dimension: maximum_arrears_mortgage_portfolio {
    type: number
    sql: ${TABLE}.maximum_arrears_mortgage_portfolio ;;
  }
  dimension: maximum_arrears_revolving_portfolio {
    type: number
    sql: ${TABLE}.maximum_arrears_revolving_portfolio ;;
  }
  dimension: maximum_arrears_vehicle_portfolio {
    type: number
    sql: ${TABLE}.maximum_arrears_vehicle_portfolio ;;
  }
  dimension: maximum_facility_portfolio_quota {
    type: number
    sql: ${TABLE}.maximum_facility_portfolio_quota ;;
  }
  dimension: maximum_revolving_portfolio_quota {
    type: number
    sql: ${TABLE}.maximum_revolving_portfolio_quota ;;
  }
  dimension: path_file {
    type: string
    sql: ${TABLE}.path_file ;;
  }
  dimension: payload_indicators {
    type: string
    sql: ${TABLE}.payload_indicators ;;
  }
  dimension: payload_qualities {
    type: string
    sql: ${TABLE}.payload_qualities ;;
  }
  dimension: risk_percentage {
    type: number
    sql: ${TABLE}.risk_percentage ;;
  }
  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }
  dimension: total_revolving_portfolio_quota {
    type: number
    sql: ${TABLE}.total_revolving_portfolio_quota ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: vrp {
    type: number
    sql: ${TABLE}.vrp ;;
  }
  dimension: vrps {
    type: number
    sql: ${TABLE}.vrps ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
