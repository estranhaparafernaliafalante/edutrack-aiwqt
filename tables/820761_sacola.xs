table sacola {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int cliente_id? {
      table = "cliente"
    }
  
    decimal subtotal?
    decimal desconto?
    decimal total?
    int status_sacola_id? {
      table = "status_sacola"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]
}