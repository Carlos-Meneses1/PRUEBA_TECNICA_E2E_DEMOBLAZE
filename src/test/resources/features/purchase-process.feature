@ProcesodeCompra
Feature: Flujo de compra en DemoBlaze

  Scenario Outline: Compra exitosa de productos en DemoBlaze
    Given el usuario accede al sitio DemoBlaze
    When agrega los siguientes productos al carrito
      | categoria | producto        |
      | Phones    | Nokia lumia 1520 |
      | Laptops   | Sony vaio i5     |

    And visualiza el contenido del carrito
    Then completa el formulario de compra con:
      | name    | country   | city  | card      | month | year |
      | <name>  | <country> | <city> | <card>   | <month> | <year> |

    And finaliza la compra
    And deberia ver el mensaje de confirmacion "Thank you for your purchase!"

    Examples:
      | name   | country | city  | card       | month | year |
      | Carlos | Ecuador | Quito | 55556666   | 08    | 2026 |
