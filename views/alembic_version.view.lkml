view: alembic_version {
  sql_table_name: operaciones.alembic_version ;;

  dimension: version_num {
    type: string
    sql: ${TABLE}.version_num ;;
  }
  measure: count {
    type: count
  }
}
