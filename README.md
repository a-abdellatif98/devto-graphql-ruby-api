# README

# First Query 
<a href="https://dev.to/isalevine ruby-on-rails-graphql-api-tutorial-from-rails-new-to-first-query-76h"> rails graphql query</a>

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


```
# mutation
<a href="https://dev.to/isalevine/ruby-on-rails-graphql-api-tutorial-creating-data-with-mutations-39ab"> rails graphql mutaion</a>

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
```


# Custom Fields and Class Methods 
<a href="https://dev.to/isalevine/ruby-on-rails-graphql-api-tutorial-filtering-with-custom-fields-and-class-methods-3efd"> rails graphql Fields, Class</a>

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


```
