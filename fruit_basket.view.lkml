view: fruit_basket {
  derived_table: {
    sql:
      SELECT
        'green' AS color, 'lime' AS fruit_type, 'no' AS is_round, 0.41 AS price, 2.4 AS price_per_pound, 0.17 AS weight
      UNION ALL
      SELECT
        'green' AS color, 'apple' AS fruit_type, 'yes' AS is_round, 0.46 AS price, 1.15 AS price_per_pound, 0.4 AS weight
      UNION ALL
      SELECT
        'green' AS color, 'lime' AS fruit_type, 'no' AS is_round, 0.43 AS price, 2.4 AS price_per_pound, 0.18 AS weight
      UNION ALL
      SELECT
        'orange' AS color, 'orange' AS fruit_type, 'yes' AS is_round, 0.73 AS price, 1.45 AS price_per_pound, 0.5 AS weight
      UNION ALL
      SELECT
        'orange' AS color, 'orange' AS fruit_type, 'yes' AS is_round, 0.65 AS price, 1.45 AS price_per_pound, 0.45 AS weight
      UNION ALL
      SELECT
        'red' AS color, 'apple' AS fruit_type, 'yes' AS is_round, 0.75 AS price, 1.25 AS price_per_pound, 0.6 AS weight
      UNION ALL
      SELECT
        'red' AS color, 'apple' AS fruit_type, 'yes' AS is_round, 0.69 AS price, 1.25 AS price_per_pound, 0.55 AS weight
      UNION ALL
      SELECT
        'yellow' AS color, 'lemon' AS fruit_type, 'no' AS is_round, 0.43 AS price, 2.25 AS price_per_pound, 0.19 AS weight
      UNION ALL
      SELECT
        'yellow' AS color, 'banana' AS fruit_type, 'no' AS is_round, 0.56 AS price, 0.75 AS price_per_pound, 0.75 AS weight
      UNION ALL
      SELECT
        'yellow' AS color, 'banana' AS fruit_type, 'no' AS is_round, 0.53 AS price, 0.75 AS price_per_pound, 0.7 AS weight
      UNION ALL
      SELECT
        'yellow' AS color, 'lemon' AS fruit_type, 'no' AS is_round, 0.5 AS price, 2.25 AS price_per_pound, 0.22 AS weight
      UNION ALL
      SELECT
        'yellow' AS color, 'lemon' AS fruit_type, 'no' AS is_round, 0.45 AS price, 2.25 AS price_per_pound, 0.2 AS weight

      ;;
  }

  dimension: color {
    type: string
    sql: ${TABLE}.color ;;
  }

  dimension: fruit_type {
    type: string
    sql: ${TABLE}.fruit_type ;;
  }

  dimension: is_round {
    type: string
    sql: ${TABLE}.is_round ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: price_per_pound {
    type: number
    sql: ${TABLE}.price_per_pound ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.weight ;;
  }

  measure: count {
    type: count
  }
  measure: count_color {
    type: count_distinct
    sql: $col ;;
  }
}
