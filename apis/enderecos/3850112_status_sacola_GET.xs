// Query all status_sacola records
query status_sacola verb=GET {
  api_group = "Endereços"

  input {
  }

  stack {
    db.query status_sacola {
      return = {type: "list"}
    } as $status_sacola
  }

  response = $status_sacola
}