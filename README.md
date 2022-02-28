# README

# First Query 
<a href="https://dev.to/isalevine ruby-on-rails-graphql-api-tutorial-from-rails-new-to-first-query-76h"> Rails Graphql Query</a>

``` 
query {
    allOrders {
        id
        description
        total      
        payments {
            id
            amount
        }
        paymentsCount
    }
	allOrders {
        description
        total      
        payments {
            amount
        }
    }
}



	"data": {
		"allOrders": [
			{
				"id": "6",
				"description": "King of the Hill DVD",
				"total": 100.0,
				"payments": [
					{
						"id": "4",
						"amount": 20.0
					},
					{
						"id": "7",
						"amount": 5.0
					}
				],
				"paymentsCount": 2
			},
			{
				"id": "7",
				"description": "Mega Man 3 OST",
				"total": 29.99,
				"payments": [
					{
						"id": "5",
						"amount": 1.0
					}
				],
				"paymentsCount": 1
			},
			{
				"id": "8",
				"description": "Punch Out!! NES",
				"total": 0.75,
				"payments": [
					{
						"id": "6",
						"amount": 0.25
					}
				],
				"paymentsCount": 1
			},
			{
				"id": "9",
				"description": "Octo Octa - Resonant Body (vinyl)",
				"total": 21.82,
				"payments": [],
				"paymentsCount": 0
			}
		]
	}
}


```
# mutation
<a href="https://dev.to/isalevine/ruby-on-rails-graphql-api-tutorial-creating-data-with-mutations-39ab"> Rails Graphql Mutaion</a>

``` 
mutation {
  createOrder(input: {
    description: "Octo Octa - Resonant Body (vinyl)",
    total: 21.82
  }) {
    order {
      id
      description
      total
      payments {
        id
        amount
      }
      paymentsCount
    }
    errors
  }
}



{
	"data": {
		"createOrder": {
			"order": {
				"id": "9",
				"description": "Octo Octa - Resonant Body (vinyl)",
				"total": 21.82,
				"payments": [],
				"paymentsCount": 0
			},
			"errors": []
		}
	}
}
```


# Custom Fields and Class Methods 
<a href="https://dev.to/isalevine/ruby-on-rails-graphql-api-tutorial-filtering-with-custom-fields-and-class-methods-3efd"> Rails Graphql Fields, Class</a>

```
query {
    allOrders {
        id
        description
        total      
        payments {
            id
            amount
            status
        }
        paymentsCount
    }
}

{
	"data": {
		"allOrders": [
			{
				"id": "6",
				"description": "King of the Hill DVD",
				"total": 100.0,
				"payments": [
					{
						"id": "4",
						"amount": 20.0,
						"status": "Successful"
					},
					{
						"id": "7",
						"amount": 5.0,
						"status": "Failed"
					}
				],
				"paymentsCount": 2
			},
			{
				"id": "7",
				"description": "Mega Man 3 OST",
				"total": 29.99,
				"payments": [
					{
						"id": "5",
						"amount": 1.0,
						"status": "Successful"
					}
				],
				"paymentsCount": 1
			},
			{
				"id": "8",
				"description": "Punch Out!! NES",
				"total": 0.75,
				"payments": [
					{
						"id": "6",
						"amount": 0.25,
						"status": "Successful"
					}
				],
				"paymentsCount": 1
			}
		]
	}
}



query {
    allOrders {
        id
        description
        total      
        successfulPayments {
            id
            amount
            status
        }
    }
}

{
	"data": {
		"allOrders": [
			{
				"id": "6",
				"description": "King of the Hill DVD",
				"total": 100.0,
				"successfulPayments": [
					{
						"id": "4",
						"amount": 20.0,
						"status": "Successful"
					}
				]
			},
			{
				"id": "7",
				"description": "Mega Man 3 OST",
				"total": 29.99,
				"successfulPayments": [
					{
						"id": "5",
						"amount": 1.0,
						"status": "Successful"
					}
				]
			},
			{
				"id": "8",
				"description": "Punch Out!! NES",
				"total": 0.75,
				"successfulPayments": [
					{
						"id": "6",
						"amount": 0.25,
						"status": "Successful"
					}
				]
			}
		]
	}
}
```
