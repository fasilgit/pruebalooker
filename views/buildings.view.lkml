view: buildings {
  sql_table_name: operaciones.buildings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }
  dimension: city_id {
    type: number
    sql: ${TABLE}.city_id ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
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
  dimension: floor_number {
    type: number
    sql: ${TABLE}.floor_number ;;
  }
  dimension: operation_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.operation_id ;;
  }
  dimension: purchase_deed {
    type: string
    sql: ${TABLE}.purchase_deed ;;
  }
  dimension: registration_number {
    type: string
    sql: ${TABLE}.registration_number ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: stratum {
    type: number
    sql: ${TABLE}.stratum ;;
  }
  dimension: total_floors {
    type: number
    sql: ${TABLE}.total_floors ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: use {
    type: string
    sql: ${TABLE}.`use` ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  dimension: year_built {
    type: number
    sql: ${TABLE}.year_built ;;
  }
  measure: count {
    type: count
    drill_fields: [id, operations.id]
  }
}
